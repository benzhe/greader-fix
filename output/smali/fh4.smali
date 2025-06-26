.class public final Lfh4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh4$a;
    }
.end annotation


# static fields
.field public static final a:Lsf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsf5<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo00;

    const-string v1, "ModelDownloadLogger"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lo00;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class v0, Lfh4$a;

    .line 3
    invoke-static {v0}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v0

    const-class v1, Lbh4;

    .line 4
    new-instance v2, Lig5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v1, Lkh6;

    .line 6
    new-instance v2, Lig5;

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v1, Leh4;->a:Lwf5;

    .line 8
    invoke-virtual {v0, v1}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 9
    invoke-virtual {v0}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    sput-object v0, Lfh4;->a:Lsf5;

    return-void
.end method
