[![](https://images.microbadger.com/badges/image/kevineye/firetv.svg)](https://microbadger.com/images/kevineye/firetv "Get your own image badge on microbadger.com")

This container provides a RESTful interface to Amazon Fire TV devices using the
[python-firetv](https://github.com/happyleavesaoc/python-firetv) Python package. It is 
particularly useful for controlling an Amazon Fire TV through 
[Home Assistant](https://home-assistant.io/components/media_player.firetv/).

## Routes

  * `GET /devices/list` (list all registered devices and state)
  * `GET /devices/connect/<device_id>` (force connection attempt)
  * `GET /devices/state/<device_id>` (return state)
  * `GET /devices/<device_id>/apps/running` (return running user apps)
  * `GET /devices/<device_id>/apps/state/<app_id>` (returns if appid is running)
  * `GET /devices/action/<device_id>/<action_id>` (request action)
  * `POST /devices/add`

The default device id is "default".

## Actions

  * `turn_on` (turn on the device, showing the UI on screen)
  * `turn_off` (turn off the device, screen goes dark)
  * `home` (emulate Home button)
  * `media_play_pause` (emulate Play/Pause button)
  * `media_play` (simulate Play button)
  * `media_pause` (simulate Pause button)
  * `media_next` (emulate Fast-Forward button)
  * `media_previous` (emulate Rewind button)
  * `volume_up` (raise volume)
  * `volume_down` (lower volume)

For more info, see:
https://github.com/happyleavesaoc/python-firetv

## Docker

Run without options:

    docker run --rm \
        -p 5556:5556 \
        kevineye/firetv

Point to a specific device:

    docker run --rm \
        -p 5556:5556 \
        kevineye/firetv
        -d <fire_tv_ip>:5555

