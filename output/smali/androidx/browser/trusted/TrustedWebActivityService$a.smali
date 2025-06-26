.class public Landroidx/browser/trusted/TrustedWebActivityService$a;
.super Lq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/browser/trusted/TrustedWebActivityService;


# direct methods
.method public constructor <init>(Landroidx/browser/trusted/TrustedWebActivityService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->e:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-direct {p0}, Lq;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->e:Landroidx/browser/trusted/TrustedWebActivityService;

    iget v1, v0, Landroidx/browser/trusted/TrustedWebActivityService;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->e:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v2}, Landroidx/browser/trusted/TrustedWebActivityService;->c()Lz3;

    move-result-object v2

    invoke-interface {v2}, Lz3;->a()Ly3;

    move-result-object v2

    .line 4
    iget-object v3, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->e:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v3}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_2

    .line 5
    array-length v2, v0

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v0, v1

    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->e:Landroidx/browser/trusted/TrustedWebActivityService;

    iget v0, v0, Landroidx/browser/trusted/TrustedWebActivityService;->f:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not verified as Trusted Web Activity provider."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
