.class public final synthetic Lj46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk56;

.field public final f:Ljava/lang/String;

.field public final g:Luc7;

.field public final h:Luc7;

.field public final i:Luc7;


# direct methods
.method public constructor <init>(Lk56;Ljava/lang/String;Luc7;Luc7;Luc7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj46;->e:Lk56;

    iput-object p2, p0, Lj46;->f:Ljava/lang/String;

    iput-object p3, p0, Lj46;->g:Luc7;

    iput-object p4, p0, Lj46;->h:Luc7;

    iput-object p5, p0, Lj46;->i:Luc7;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lj46;->e:Lk56;

    iget-object v1, p0, Lj46;->f:Ljava/lang/String;

    iget-object v2, p0, Lj46;->g:Luc7;

    iget-object v3, p0, Lj46;->h:Luc7;

    iget-object v4, p0, Lj46;->i:Luc7;

    check-cast p1, Lqg6;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lqg6;->F()Ljava/util/List;

    move-result-object p1

    .line 3
    sget v5, Lmb7;->e:I

    const-string v5, "source is null"

    .line 4
    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v5, Lve7;

    invoke-direct {v5, p1}, Lve7;-><init>(Ljava/lang/Iterable;)V

    .line 6
    new-instance p1, Lg56;

    invoke-direct {p1, v0}, Lg56;-><init>(Lk56;)V

    .line 7
    new-instance v6, Lpe7;

    invoke-direct {v6, v5, p1}, Lpe7;-><init>(Lmb7;Lvc7;)V

    .line 8
    new-instance p1, Lh56;

    invoke-direct {p1, v1}, Lh56;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v5, Lpe7;

    invoke-direct {v5, v6, p1}, Lpe7;-><init>(Lmb7;Lvc7;)V

    .line 10
    invoke-virtual {v5, v2}, Lmb7;->l(Luc7;)Lmb7;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v3}, Lmb7;->l(Luc7;)Lmb7;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v4}, Lmb7;->l(Luc7;)Lmb7;

    move-result-object p1

    sget-object v2, Li56;->e:Li56;

    .line 13
    sget-object v3, Lri7;->e:Lri7;

    .line 14
    new-instance v4, Lwf7;

    invoke-direct {v4, p1, v3}, Lwf7;-><init>(Lmb7;Ljava/util/concurrent/Callable;)V

    .line 15
    new-instance p1, Ldd7$h;

    invoke-direct {p1, v2}, Ldd7$h;-><init>(Ljava/util/Comparator;)V

    .line 16
    new-instance v2, Laf7;

    invoke-direct {v2, v4, p1}, Laf7;-><init>(Lmb7;Luc7;)V

    .line 17
    sget-object p1, Ldd7;->a:Luc7;

    .line 18
    sget v3, Lmb7;->e:I

    const-string v4, "bufferSize"

    .line 19
    invoke-static {v3, v4}, Led7;->a(ILjava/lang/String;)I

    .line 20
    new-instance v4, Lte7;

    invoke-direct {v4, v2, p1, v3}, Lte7;-><init>(Lmb7;Luc7;I)V

    .line 21
    new-instance p1, Lme7;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v4, v2, v3}, Lme7;-><init>(Lmb7;J)V

    .line 22
    new-instance v2, Lj56;

    invoke-direct {v2, v0, v1}, Lj56;-><init>(Lk56;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v2}, Lrb7;->g(Luc7;)Lrb7;

    move-result-object p1

    return-object p1
.end method
