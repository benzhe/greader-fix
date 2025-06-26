.class public Lbj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfj4$b;


# static fields
.field public static final b:Lo00;

.field public static final c:Lsf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsf5<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lyx;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo00;

    const-string v1, "ClearcutTransport"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lo00;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbj4;->b:Lo00;

    .line 2
    const-class v0, Lbj4;

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

    sget-object v1, Laj4;->a:Lwf5;

    .line 6
    invoke-virtual {v0, v1}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 7
    invoke-virtual {v0}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    sput-object v0, Lbj4;->c:Lsf5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FIREBASE_ML_SDK"

    .line 2
    invoke-static {p1, v0}, Lyx;->a(Landroid/content/Context;Ljava/lang/String;)Lyx;

    move-result-object p1

    iput-object p1, p0, Lbj4;->a:Lyx;

    return-void
.end method


# virtual methods
.method public final a(Lgp4;)V
    .locals 4

    .line 1
    sget-object v0, Lbj4;->b:Lo00;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Logging FirebaseMlSdkLogEvent "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearcutTransport"

    invoke-virtual {v0, v2, v1}, Lo00;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lbj4;->a:Lyx;

    invoke-virtual {p1}, Lmj4;->d()[B

    move-result-object p1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lyx$a;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, v3}, Lyx$a;-><init>(Lyx;[BLzx;)V

    .line 4
    invoke-virtual {v1}, Lyx$a;->a()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lbj4;->b:Lo00;

    const-string v1, "Exception thrown from the logging side"

    invoke-virtual {v0, v2, v1, p1}, Lo00;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
