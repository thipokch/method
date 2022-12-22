### Flutter 
```
flutterfire config \
        --project=method-gcp-dev \
        --out=lib/config/firebase.dev.dart \
        --ios-bundle-id=ch.thipok.method.dev \
        --macos-bundle-id=ch.thipok.method.dev \
        --android-app-id=ch.thipok.method.dev \
        --platforms=android,ios,macos,web,linux,windows \
        --yes

flutterfire config \
        --project=method-gcp-stg \
        --out=lib/config/firebase.stg.dart \
        --ios-bundle-id=ch.thipok.method.stg \
        --macos-bundle-id=ch.thipok.method.stg \
        --android-app-id=ch.thipok.method.stg \
        --platforms=android,ios,macos,web,linux,windows \
        --yes

flutterfire config \
        --project=method-gcp-prd \
        --out=lib/config/firebase.prd.dart \
        --ios-bundle-id=ch.thipok.method \
        --macos-bundle-id=ch.thipok.method \
        --android-app-id=ch.thipok.method \
        --platforms=android,ios,macos,web,linux,windows \
        --yes

```