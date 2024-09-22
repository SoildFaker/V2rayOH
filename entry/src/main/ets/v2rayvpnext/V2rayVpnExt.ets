import { VpnExtensionAbility, vpnExtension  } from '@kit.NetworkKit';
import { Want } from '@kit.AbilityKit';

export default class V2rayVpnExt extends VpnExtensionAbility {
  onCreate(want: Want) {
    let VpnConnection: vpnExtension.VpnConnection = vpnExtension.createVpnConnection(this.context);
    console.log('V2rayVpnExt onCreate');
  }

  onDestroy() {
    console.log('V2rayVpnExt onDestroy');
  }
}