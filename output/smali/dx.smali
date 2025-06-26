.class public final synthetic Ldx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# static fields
.field public static final a:Lcv2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    sput-object v0, Ldx;->a:Lcv2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "isSuccessful"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appSettingsJson"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzeg(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method
