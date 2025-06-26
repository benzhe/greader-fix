.class public final Lgr$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Lfr;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lgr$a;

.field public static final b:Lxn5;

.field public static final c:Lxn5;

.field public static final d:Lxn5;

.field public static final e:Lxn5;

.field public static final f:Lxn5;

.field public static final g:Lxn5;

.field public static final h:Lxn5;

.field public static final i:Lxn5;

.field public static final j:Lxn5;

.field public static final k:Lxn5;

.field public static final l:Lxn5;

.field public static final m:Lxn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgr$a;

    invoke-direct {v0}, Lgr$a;-><init>()V

    sput-object v0, Lgr$a;->a:Lgr$a;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->b:Lxn5;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->c:Lxn5;

    const-string v0, "hardware"

    .line 4
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->d:Lxn5;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->e:Lxn5;

    const-string v0, "product"

    .line 6
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->f:Lxn5;

    const-string v0, "osBuild"

    .line 7
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->g:Lxn5;

    const-string v0, "manufacturer"

    .line 8
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->h:Lxn5;

    const-string v0, "fingerprint"

    .line 9
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->i:Lxn5;

    const-string v0, "locale"

    .line 10
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->j:Lxn5;

    const-string v0, "country"

    .line 11
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->k:Lxn5;

    const-string v0, "mccMnc"

    .line 12
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->l:Lxn5;

    const-string v0, "applicationBuild"

    .line 13
    invoke-static {v0}, Lxn5;->a(Ljava/lang/String;)Lxn5;

    move-result-object v0

    sput-object v0, Lgr$a;->m:Lxn5;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lfr;

    check-cast p2, Lzn5;

    .line 2
    sget-object v0, Lgr$a;->b:Lxn5;

    invoke-virtual {p1}, Lfr;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 3
    sget-object v0, Lgr$a;->c:Lxn5;

    invoke-virtual {p1}, Lfr;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 4
    sget-object v0, Lgr$a;->d:Lxn5;

    invoke-virtual {p1}, Lfr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 5
    sget-object v0, Lgr$a;->e:Lxn5;

    invoke-virtual {p1}, Lfr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 6
    sget-object v0, Lgr$a;->f:Lxn5;

    invoke-virtual {p1}, Lfr;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 7
    sget-object v0, Lgr$a;->g:Lxn5;

    invoke-virtual {p1}, Lfr;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 8
    sget-object v0, Lgr$a;->h:Lxn5;

    invoke-virtual {p1}, Lfr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 9
    sget-object v0, Lgr$a;->i:Lxn5;

    invoke-virtual {p1}, Lfr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 10
    sget-object v0, Lgr$a;->j:Lxn5;

    invoke-virtual {p1}, Lfr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 11
    sget-object v0, Lgr$a;->k:Lxn5;

    invoke-virtual {p1}, Lfr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 12
    sget-object v0, Lgr$a;->l:Lxn5;

    invoke-virtual {p1}, Lfr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    .line 13
    sget-object v0, Lgr$a;->m:Lxn5;

    invoke-virtual {p1}, Lfr;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lzn5;->h(Lxn5;Ljava/lang/Object;)Lzn5;

    return-void
.end method
