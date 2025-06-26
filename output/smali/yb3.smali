.class public final Lyb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Lxb3;


# direct methods
.method public constructor <init>(Lxb3;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb3;->g:Lxb3;

    iput p2, p0, Lyb3;->e:I

    iput-boolean p3, p0, Lyb3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lyb3;->g:Lxb3;

    iget v1, p0, Lyb3;->e:I

    iget-boolean v2, p0, Lyb3;->f:Z

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v1, :cond_0

    if-eqz v2, :cond_0

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 3
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_1
    iget-object v2, v0, Lxb3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lxb3;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 7
    iget-object v0, v0, Lxb3;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v0, v3, v2}, Lc50;->w4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lgl1;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lyb3;->g:Lxb3;

    .line 11
    iput-object v0, v2, Lxb3;->j:Lgl1;

    .line 12
    iget v2, p0, Lyb3;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Lgl1;->P()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v0}, Lgl1;->M()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0}, Lgl1;->T()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v0}, Lgl1;->U()Ljl1;

    move-result-object v2

    invoke-virtual {v2}, Ljl1;->x()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v0}, Lgl1;->U()Ljl1;

    move-result-object v0

    invoke-virtual {v0}, Ljl1;->y()J

    move-result-wide v2

    const-wide/16 v5, -0x2

    cmp-long v0, v2, v5

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 18
    iget-object v0, p0, Lyb3;->g:Lxb3;

    iget v1, p0, Lyb3;->e:I

    add-int/2addr v1, v4

    iget-boolean v2, p0, Lyb3;->f:Z

    invoke-virtual {v0, v1, v2}, Lxb3;->c(IZ)V

    :cond_5
    return-void
.end method
