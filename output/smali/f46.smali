.class public final synthetic Lf46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lk56;


# direct methods
.method public constructor <init>(Lk56;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf46;->e:Lk56;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lf46;->e:Lk56;

    check-cast p1, Lqg6;

    .line 1
    iget-object v0, v0, Lk56;->c:Lo26;

    .line 2
    iget-object v1, v0, Lo26;->a:Lv56;

    .line 3
    invoke-virtual {v1, p1}, Lv56;->b(Lii6;)Lhb7;

    move-result-object v1

    .line 4
    new-instance v2, Lj26;

    invoke-direct {v2, v0, p1}, Lj26;-><init>(Lo26;Lqg6;)V

    .line 5
    invoke-virtual {v1, v2}, Lhb7;->d(Lqc7;)Lhb7;

    move-result-object p1

    .line 6
    sget-object v0, La56;->a:La56;

    .line 7
    invoke-virtual {p1, v0}, Lhb7;->d(Lqc7;)Lhb7;

    move-result-object p1

    sget-object v0, Lb56;->e:Lb56;

    .line 8
    invoke-virtual {p1, v0}, Lhb7;->e(Ltc7;)Lhb7;

    move-result-object p1

    sget-object v0, Lc56;->e:Lc56;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lfe7;

    invoke-direct {v1, p1, v0}, Lfe7;-><init>(Llb7;Luc7;)V

    .line 11
    invoke-virtual {v1}, Lhb7;->h()Lic7;

    return-void
.end method
