.class public final Lx00;
.super Lz20;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz20<",
        "Lu00;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lx00;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx00;

    invoke-direct {v0}, Lx00;-><init>()V

    sput-object v0, Lx00;->c:Lx00;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lz20;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;II)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz20$a;
        }
    .end annotation

    .line 1
    sget-object v0, Lx00;->c:Lx00;

    .line 2
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/internal/SignInButtonConfig;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/internal/SignInButtonConfig;-><init>(II)V

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, p0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p0}, Lz20;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu00;

    invoke-interface {p0, v2, v1}, Lu00;->Z2(Lx20;Lcom/google/android/gms/common/internal/SignInButtonConfig;)Lx20;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Lz20$a;

    const/16 v1, 0x40

    const-string v2, "Could not get button with size "

    const-string v3, " and color "

    invoke-static {v1, v2, p1, v3, p2}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lz20$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lu00;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lu00;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ld10;

    invoke-direct {v0, p1}, Ld10;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
