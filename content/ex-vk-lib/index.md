+++
title = "balalaika_bear - Elixir library for VK API"
description = "balalaika_bear is a fork of deprecated VK API library for Elixir."
date = 2022-01-25

[taxonomies]
tags = ["code", "elixir"]

[extra]
author = "kira"
+++


# what
{{accent(text="balalaika_bear",href="https://github.com/q60/balalaika_bear")}} is a fork of deprecated VK API library for **Elixir**.

## why and how it started
Most of the modern programming languages ain't rich of decent VK API libraries. And only some exceptions that proves the rule has **Longpoll** functionality amongst API method functions and macros.

It's the main problem I am trying to solve by rewriting an existing library for my most familiar programming language.

## milestones
| goal                                                  | state                                              |
|-------------------------------------------------------|----------------------------------------------------|
| implement **Group Longpoll**                          | **{{accent(text="[DONE]")}}**                      |
| implement **User Longpoll**                           | **{{accent(text="[DONE]")}}**                      |
| make a whole new library, starting from a scratch     | **{{color(text="[YET TO COME]",code="#F85F63")}}** |
| restructure **User Longpoll** responses in a neat way | **{{color(text="[YET TO COME]",code="#F85F63")}}** |
| implement macros for bot usage                        | **{{color(text="[YET TO COME]",code="#F85F63")}}** |
| make some simple boilerplates for bots                | **{{color(text="[YET TO COME]",code="#F85F63")}}** |

The new perfect library will be fully independent of **balalaika_bear**.

## usage example
```elixir
defmodule TestBot do
  alias BalalaikaBear.Longpoll.GroupLongpoll, as: Longpoll

  @token "your token"
  @group_id "your group id"

  @spec main(any) :: any
  def main(_args) do
    # Start longpoll
    parent = self()

    pid =
      spawn(
        Longpoll,
        :init,
        [parent, %{access_token: @token, group_id: @group_id, v: 5.131}]
      )

    loop()
  end

  # Main longpoll loop
  defp loop() do
    receive do
      {:ok, response} ->
        updates = response["updates"]

        unless updates == nil do
          [update | _] = response["updates"]

          # Processing events in separate tasks
          Task.start(fn ->
            process_event(update["type"], update["object"])
          end)
        end
    end

    loop()
  end

  # Works with incoming events depending on event type.
  # Works with incoming messages.
  defp process_event("message_new", event) do
    message = event["message"]
    from_id = message["from_id"]
    peer_id = message["peer_id"]

    process_message(from_id, peer_id, message)
  end

  # Works with other events
  defp process_event(_, _) do
  end

  # Works with message events.
  # If message from chat
  defp process_message(from_id, peer_id, message) when from_id != peer_id do
    text = message["text"]
    
    # ...
    # do something with message
    # ...
  end

  # If message from messenger
  defp process_message(_from_id, peer_id, message) do
    text = message["text"]
    
    # ...
    # do something with message
    # ...
  end
end
```
