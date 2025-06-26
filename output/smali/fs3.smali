.class public final synthetic Lfs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks0;


# static fields
.field public static final a:Lks0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfs3;

    invoke-direct {v0}, Lfs3;-><init>()V

    sput-object v0, Lfs3;->a:Lks0;

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

    check-cast p1, Landroid/os/IBinder;

    .line 1
    sget v0, Lnk0;->e:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator"

    .line 2
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lok0;

    if-eqz v1, :cond_1

    .line 4
    move-object p1, v0

    check-cast p1, Lok0;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lqk0;

    invoke-direct {v0, p1}, Lqk0;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
