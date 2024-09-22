import hilog from '@ohos.hilog';
import vpn_client from 'libvpn_client.so';
import common from '@ohos.app.ability.common';
import vpnExtension from '@ohos.net.vpnExtension';
import Want from '@ohos.app.ability.Want';
import promptAction from '@ohos.promptAction';
import { BusinessError } from '@kit.BasicServicesKit';

let want: Want = {
  deviceId: "",
  bundleName: "lri.enbin.v2rayoh",
  abilityName: "V2rayVpnExt",
};

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Button("Start")
        .onClick(() => {
          vpnExtension.startVpnExtensionAbility(want)

        })
        .fontSize(50)
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
  }
}