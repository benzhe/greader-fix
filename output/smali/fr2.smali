.class public final Lfr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lir2;


# static fields
.field public static final a:Lgl1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lgl1;->V()Lgl1$b;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ls63$b;->o()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Ls63$b;->g:Z

    .line 5
    :cond_0
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    const-string v2, "E"

    invoke-static {v1, v2}, Lgl1;->e0(Lgl1;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Lgl1;

    sput-object v0, Lfr2;->a:Lgl1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lgl1;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v1, v0}, Lc50;->w4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lgl1;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lgl1;
    .locals 1

    .line 1
    sget-object v0, Lfr2;->a:Lgl1;

    return-object v0
.end method
