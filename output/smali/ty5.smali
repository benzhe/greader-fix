.class public Lty5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw26;

.field public final b:Lv26;

.field public final c:Lz96;

.field public d:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;


# direct methods
.method public constructor <init>(Lk56;Ls56;Lr26;Lz96;Lw26;Lv26;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lty5;->c:Lz96;

    .line 3
    iput-object p5, p0, Lty5;->a:Lw26;

    .line 4
    iput-object p6, p0, Lty5;->b:Lv26;

    .line 5
    invoke-interface {p4}, Lz96;->n()Le45;

    move-result-object p2

    sget-object p3, Lry5;->a:Lry5;

    .line 6
    invoke-virtual {p2, p3}, Le45;->f(Lb45;)Le45;

    .line 7
    iget-object p2, p1, Lk56;->a:Lpc7;

    iget-object p3, p1, Lk56;->j:Lg26;

    .line 8
    iget-object p3, p3, Lg26;->b:Lpc7;

    .line 9
    iget-object p4, p1, Lk56;->b:Lpc7;

    .line 10
    sget p5, Lmb7;->e:I

    const-string p5, "source1 is null"

    .line 11
    invoke-static {p2, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p5, "source2 is null"

    .line 12
    invoke-static {p3, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p5, "source3 is null"

    .line 13
    invoke-static {p4, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p5, 0x3

    new-array p6, p5, [Lw38;

    const/4 v0, 0x0

    aput-object p2, p6, v0

    const/4 p2, 0x1

    aput-object p3, p6, p2

    const/4 p2, 0x2

    aput-object p4, p6, p2

    .line 14
    new-instance p3, Lue7;

    invoke-direct {p3, p6}, Lue7;-><init>([Ljava/lang/Object;)V

    .line 15
    sget-object p4, Ldd7;->a:Luc7;

    .line 16
    sget p6, Lmb7;->e:I

    .line 17
    invoke-virtual {p3, p4, v0, p5, p6}, Lmb7;->k(Luc7;ZII)Lmb7;

    move-result-object v2

    .line 18
    sget-object v3, Lk46;->e:Lk46;

    .line 19
    sget-object v4, Ldd7;->d:Ltc7;

    sget-object p3, Ldd7;->c:Lqc7;

    .line 20
    new-instance p4, Lke7;

    move-object v1, p4

    move-object v5, p3

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lke7;-><init>(Lmb7;Ltc7;Ltc7;Lqc7;Lqc7;)V

    .line 21
    iget-object p5, p1, Lk56;->f:Lm66;

    .line 22
    iget-object p5, p5, Lm66;->a:Lzb7;

    .line 23
    invoke-virtual {p4, p5}, Lmb7;->o(Lzb7;)Lmb7;

    move-result-object p4

    .line 24
    new-instance p5, Lv46;

    invoke-direct {p5, p1}, Lv46;-><init>(Lk56;)V

    const-string p6, "prefetch"

    .line 25
    invoke-static {p2, p6}, Led7;->a(ILjava/lang/String;)I

    .line 26
    instance-of p6, p4, Lld7;

    if-eqz p6, :cond_1

    .line 27
    check-cast p4, Lld7;

    invoke-interface {p4}, Lld7;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 28
    sget-object p2, Loe7;->f:Lmb7;

    goto :goto_0

    .line 29
    :cond_0
    new-instance p4, Lqf7;

    invoke-direct {p4, p2, p5}, Lqf7;-><init>(Ljava/lang/Object;Luc7;)V

    move-object p2, p4

    goto :goto_0

    .line 30
    :cond_1
    new-instance p6, Lie7;

    sget-object v0, Lui7;->e:Lui7;

    invoke-direct {p6, p4, p5, p2, v0}, Lie7;-><init>(Lmb7;Luc7;ILui7;)V

    move-object p2, p6

    .line 31
    :goto_0
    iget-object p1, p1, Lk56;->f:Lm66;

    .line 32
    iget-object p1, p1, Lm66;->b:Lzb7;

    .line 33
    invoke-virtual {p2, p1}, Lmb7;->o(Lzb7;)Lmb7;

    move-result-object p1

    .line 34
    new-instance p2, Lsy5;

    invoke-direct {p2, p0}, Lsy5;-><init>(Lty5;)V

    .line 35
    sget-object p4, Ldd7;->e:Ltc7;

    sget-object p5, Lye7;->e:Lye7;

    invoke-virtual {p1, p2, p4, p3, p5}, Lmb7;->r(Ltc7;Ltc7;Lqc7;Ltc7;)Lic7;

    return-void
.end method
