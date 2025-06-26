.class public Lxg4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbh4$a;


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

    const-string v1, "ClearcutTransport"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lo00;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class v0, Lxg4;

    .line 3
    invoke-static {v0}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 4
    new-instance v2, Lig5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v1, Lwg4;->a:Lwf5;

    .line 6
    invoke-virtual {v0, v1}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 7
    invoke-virtual {v0}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    sput-object v0, Lxg4;->a:Lsf5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FIREBASE_ML_SDK"

    .line 2
    invoke-static {p1, v0}, Lyx;->a(Landroid/content/Context;Ljava/lang/String;)Lyx;

    return-void
.end method
