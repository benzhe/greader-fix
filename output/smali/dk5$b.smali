.class public final Ldk5$b;
.super Ltk5$d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Boolean;

.field public f:Ltk5$d$a;

.field public g:Ltk5$d$f;

.field public h:Ltk5$d$e;

.field public i:Ltk5$d$c;

.field public j:Luk5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luk5<",
            "Ltk5$d$d;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltk5$d$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ltk5$d;Ldk5$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ltk5$d$b;-><init>()V

    .line 3
    check-cast p1, Ldk5;

    .line 4
    iget-object p2, p1, Ldk5;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Ldk5$b;->a:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Ldk5;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Ldk5$b;->b:Ljava/lang/String;

    .line 8
    iget-wide v0, p1, Ldk5;->c:J

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Ldk5$b;->c:Ljava/lang/Long;

    .line 10
    iget-object p2, p1, Ldk5;->d:Ljava/lang/Long;

    .line 11
    iput-object p2, p0, Ldk5$b;->d:Ljava/lang/Long;

    .line 12
    iget-boolean p2, p1, Ldk5;->e:Z

    .line 13
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Ldk5$b;->e:Ljava/lang/Boolean;

    .line 14
    iget-object p2, p1, Ldk5;->f:Ltk5$d$a;

    .line 15
    iput-object p2, p0, Ldk5$b;->f:Ltk5$d$a;

    .line 16
    iget-object p2, p1, Ldk5;->g:Ltk5$d$f;

    .line 17
    iput-object p2, p0, Ldk5$b;->g:Ltk5$d$f;

    .line 18
    iget-object p2, p1, Ldk5;->h:Ltk5$d$e;

    .line 19
    iput-object p2, p0, Ldk5$b;->h:Ltk5$d$e;

    .line 20
    iget-object p2, p1, Ldk5;->i:Ltk5$d$c;

    .line 21
    iput-object p2, p0, Ldk5$b;->i:Ltk5$d$c;

    .line 22
    iget-object p2, p1, Ldk5;->j:Luk5;

    .line 23
    iput-object p2, p0, Ldk5$b;->j:Luk5;

    .line 24
    iget p1, p1, Ldk5;->k:I

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ldk5$b;->k:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Ltk5$d;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ldk5$b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, " generator"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 2
    :goto_0
    iget-object v2, v0, Ldk5$b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, " identifier"

    .line 3
    invoke-static {v1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_1
    iget-object v2, v0, Ldk5$b;->c:Ljava/lang/Long;

    if-nez v2, :cond_2

    const-string v2, " startedAt"

    .line 5
    invoke-static {v1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_2
    iget-object v2, v0, Ldk5$b;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    const-string v2, " crashed"

    .line 7
    invoke-static {v1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_3
    iget-object v2, v0, Ldk5$b;->f:Ltk5$d$a;

    if-nez v2, :cond_4

    const-string v2, " app"

    .line 9
    invoke-static {v1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_4
    iget-object v2, v0, Ldk5$b;->k:Ljava/lang/Integer;

    if-nez v2, :cond_5

    const-string v2, " generatorType"

    .line 11
    invoke-static {v1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    new-instance v1, Ldk5;

    iget-object v4, v0, Ldk5$b;->a:Ljava/lang/String;

    iget-object v5, v0, Ldk5$b;->b:Ljava/lang/String;

    iget-object v2, v0, Ldk5$b;->c:Ljava/lang/Long;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Ldk5$b;->d:Ljava/lang/Long;

    iget-object v2, v0, Ldk5$b;->e:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, v0, Ldk5$b;->f:Ltk5$d$a;

    iget-object v11, v0, Ldk5$b;->g:Ltk5$d$f;

    iget-object v12, v0, Ldk5$b;->h:Ltk5$d$e;

    iget-object v13, v0, Ldk5$b;->i:Ltk5$d$c;

    iget-object v14, v0, Ldk5$b;->j:Luk5;

    iget-object v2, v0, Ldk5$b;->k:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Ldk5;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLtk5$d$a;Ltk5$d$f;Ltk5$d$e;Ltk5$d$c;Luk5;ILdk5$a;)V

    return-object v1

    .line 17
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required properties:"

    invoke-static {v3, v1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b(Z)Ltk5$d$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ldk5$b;->e:Ljava/lang/Boolean;

    return-object p0
.end method
