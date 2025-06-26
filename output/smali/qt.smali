.class public final synthetic Lqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$a;


# instance fields
.field public final a:Ltt;

.field public final b:Lrs;

.field public final c:Ljava/lang/Iterable;

.field public final d:Lds;

.field public final e:I


# direct methods
.method public constructor <init>(Ltt;Lrs;Ljava/lang/Iterable;Lds;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt;->a:Ltt;

    iput-object p2, p0, Lqt;->b:Lrs;

    iput-object p3, p0, Lqt;->c:Ljava/lang/Iterable;

    iput-object p4, p0, Lqt;->d:Lds;

    iput p5, p0, Lqt;->e:I

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lqt;->a:Ltt;

    iget-object v1, p0, Lqt;->b:Lrs;

    iget-object v2, p0, Lqt;->c:Ljava/lang/Iterable;

    iget-object v3, p0, Lqt;->d:Lds;

    iget v4, p0, Lqt;->e:I

    .line 1
    invoke-virtual {v1}, Lrs;->c()Lrs$a;

    move-result-object v5

    sget-object v6, Lrs$a;->f:Lrs$a;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 2
    iget-object v1, v0, Ltt;->c:Lcu;

    invoke-interface {v1, v2}, Lcu;->A0(Ljava/lang/Iterable;)V

    .line 3
    iget-object v0, v0, Ltt;->d:Lzt;

    add-int/2addr v4, v7

    invoke-interface {v0, v3, v4}, Lzt;->a(Lds;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v4, v0, Ltt;->c:Lcu;

    invoke-interface {v4, v2}, Lcu;->p(Ljava/lang/Iterable;)V

    .line 5
    invoke-virtual {v1}, Lrs;->c()Lrs$a;

    move-result-object v2

    sget-object v4, Lrs$a;->e:Lrs$a;

    if-ne v2, v4, :cond_1

    .line 6
    iget-object v2, v0, Ltt;->c:Lcu;

    iget-object v4, v0, Ltt;->g:Ldv;

    .line 7
    invoke-interface {v4}, Ldv;->a()J

    move-result-wide v4

    invoke-virtual {v1}, Lrs;->b()J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 8
    invoke-interface {v2, v3, v8, v9}, Lcu;->H(Lds;J)V

    .line 9
    :cond_1
    iget-object v1, v0, Ltt;->c:Lcu;

    invoke-interface {v1, v3}, Lcu;->y0(Lds;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, v0, Ltt;->d:Lzt;

    invoke-interface {v0, v3, v7}, Lzt;->a(Lds;I)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
