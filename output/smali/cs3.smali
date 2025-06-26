.class public final Lcs3;
.super Lms3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lms3<",
        "Ljk0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lhg0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcs3;->b:Landroid/content/Context;

    iput-object p2, p0, Lcs3;->c:Lhg0;

    invoke-direct {p0}, Lms3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqt3;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcs3;->b:Landroid/content/Context;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcs3;->c:Lhg0;

    const v2, 0xc365f90

    .line 4
    invoke-interface {p1, v1, v0, v2}, Lqt3;->zzc(Lx20;Lhg0;I)Ljk0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcs3;->b:Landroid/content/Context;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcs3;->b:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl"

    sget-object v3, Lfs3;->a:Lks0;

    .line 4
    invoke-static {v0, v2, v3}, Lc50;->D1(Landroid/content/Context;Ljava/lang/String;Lks0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lok0;

    .line 5
    iget-object v2, p0, Lcs3;->c:Lhg0;

    const v3, 0xc365f90

    invoke-interface {v0, v1, v2, v3}, Lok0;->zzc(Lx20;Lhg0;I)Ljk0;

    move-result-object v0
    :try_end_0
    .catch Ljs0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
