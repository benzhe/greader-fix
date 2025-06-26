.class public final synthetic Lcf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd2;


# instance fields
.field public final a:Lze2;


# direct methods
.method public constructor <init>(Lze2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf2;->a:Lze2;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcf2;->a:Lze2;

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "gms_sdk_env"

    .line 2
    iget-object v0, v0, Lze2;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed putting version constants."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
