.class public final synthetic Lpw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# static fields
.field public static final a:Ljo2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpw1;

    invoke-direct {v0}, Lpw1;-><init>()V

    sput-object v0, Lpw1;->a:Ljo2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "Ad request signals:"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object p1
.end method
