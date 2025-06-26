.class public final synthetic Luo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks0;


# static fields
.field public static final a:Lks0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Luo0;

    invoke-direct {v0}, Luo0;-><init>()V

    sput-object v0, Luo0;->a:Lks0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator"

    .line 2
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Llo0;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Llo0;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lko0;

    invoke-direct {v0, p1}, Lko0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
