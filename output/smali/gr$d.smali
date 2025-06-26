.class public final Lgr$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyn5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Lqr;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lgr$d;

.field public static final b:Lxn5;

.field public static final c:Lxn5;

.field public static final d:Lxn5;

.field public static final e:Lxn5;

.field public static final f:Lxn5;

.field public static final g:Lxn5;

.field public static final h:Lxn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgr$d;

    invoke-direct {v0}, Lgr$d;-><init>()V

    sput-object v0, Lgr$d;->a:Lgr$d;

    const-string v0, "eventTimeMs"

    .line 2
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$d;->b:Lxn5;

    const-string v0, "eventCode"

    .line 3
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$d;->c:Lxn5;

    const-string v0, "eventUptimeMs"

    .line 4
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$d;->d:Lxn5;

    const-string v0, "sourceExtension"

    .line 5
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$d;->e:Lxn5;

    const-string v0, "sourceExtensionJsonProto3"

    .line 6
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$d;->f:Lxn5;

    const-string v0, "timezoneOffsetSeconds"

    .line 7
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$d;->g:Lxn5;

    const-string v0, "networkConnectionInfo"

    .line 8
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$d;->h:Lxn5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lqr;

    check-cast p2, Lzn5;

    .line 2
    sget-object v0, Lgr$d;->b:Lxn5;

    invoke-virtual {p1}, Lqr;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lzn5;->a(Lxn5;J)Lzn5;

    .line 3
    sget-object v0, Lgr$d;->c:Lxn5;

    invoke-virtual {p1}, Lqr;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 4
    sget-object v0, Lgr$d;->d:Lxn5;

    invoke-virtual {p1}, Lqr;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lzn5;->a(Lxn5;J)Lzn5;

    .line 5
    sget-object v0, Lgr$d;->e:Lxn5;

    invoke-virtual {p1}, Lqr;->e()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 6
    sget-object v0, Lgr$d;->f:Lxn5;

    invoke-virtual {p1}, Lqr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 7
    sget-object v0, Lgr$d;->g:Lxn5;

    invoke-virtual {p1}, Lqr;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lzn5;->a(Lxn5;J)Lzn5;

    .line 8
    sget-object v0, Lgr$d;->h:Lxn5;

    invoke-virtual {p1}, Lqr;->d()Ltr;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    return-void
.end method
