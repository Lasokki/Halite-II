<template>
<div class="map-props">
  <div class="map-props-icon">
    <span class="icon-ship"></span>
  </div>
  <div class="map-props-list">
    <table>
      <tr>
        <td>Location:</td>
        <td>{{info.location}}</td>
      </tr>
      <tr>
        <td>Owner:</td>
        <td>{{info.owner}}</td>
      </tr>
      <tr>
        <td>Ship ID:</td>
        <td>{{info.id}}</td>
      </tr>
      <tr>
        <td>Velocity:</td>
        <td>{{info.velocity}}</td>
      </tr>
      <tr>
        <td>Health:</td>
        <td>{{info.health}}</td>
      </tr>
    </table>
  </div>
</div>
</template>
<script>
  import Vue from 'vue'
import {isUndefined, isNull} from 'lodash'

export default {
    props: ['selectedShip', 'players'],
    computed: {
      info: function () {
        const base = this.selectedShip
        let owner = "";
        if (!isUndefined(base.owner) && !isNull(base.owner) && this.players[base.owner]) {
          owner = this.players[base.owner].name;
        }

        return {
          location: `${base.x.toFixed(4)}, ${base.y.toFixed(4)}`,
          owner: owner,
          id: base.id,
          velocity: `(${base.vel_x.toFixed(2)}, ${base.vel_y.toFixed(2)})`,
          health: base.health
        }
      }
    }
  }
</script>
