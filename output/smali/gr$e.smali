.class public final Lgr$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Lrr;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lgr$e;

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
    new-instance v0, Lgr$e;

    invoke-direct {v0}, Lgr$e;-><init>()V

    sput-object v0, Lgr$e;->a:Lgr$e;

    const-string v0, "requestTimeMs"

    .line 2
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$e;->b:Lxn5;

    const-string v0, "requestUptimeMs"

    .line 3
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$e;->c:Lxn5;

    const-string v0, "clientInfo"

    .line 4
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$e;->d:Lxn5;

    const-string v0, "logSource"

    .line 5
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$e;->e:Lxn5;

    const-string v0, "logSourceName"

    .line 6
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$e;->f:Lxn5;

    const-string v0, "logEvent"

    .line 7
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$e;->g:Lxn5;

    const-string v0, "qosTier"

    .line 8
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$e;->h:Lxn5;

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
    check-cast p1, Lrr;

    check-cast p2, Lzn5;

    .line 2
    sget-object v0, Lgr$e;->b:Lxn5;

    invoke-virtual {p1}, Lrr;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lzn5;->a(Lxn5;J)Lzn5;

    .line 3
    sget-object v0, Lgr$e;->c:Lxn5;

    invoke-virtual {p1}, Lrr;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lzn5;->a(Lxn5;J)Lzn5;

    .line 4
    sget-object v0, Lgr$e;->d:Lxn5;

    invoke-virtual {p1}, Lrr;->a()Lpr;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 5
    sget-object v0, Lgr$e;->e:Lxn5;

    invoke-virtual {p1}, Lrr;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 6
    sget-object v0, Lgr$e;->f:Lxn5;

    invoke-virtual {p1}, Lrr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 7
    sget-object v0, Lgr$e;->g:Lxn5;

    invoke-virtual {p1}, Lrr;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 8
    sget-object v0, Lgr$e;->h:Lxn5;

    invoke-virtual {p1}, Lrr;->e()Lur;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    return-void
.end method
