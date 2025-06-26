.class public final Lik5$b;
.super Ltk5$d$d$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ltk5$d$d$a$b;

.field public b:Luk5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luk5<",
            "Ltk5$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltk5$d$d$a$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ltk5$d$d$a;Lik5$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ltk5$d$d$a$a;-><init>()V

    .line 3
    check-cast p1, Lik5;

    .line 4
    iget-object p2, p1, Lik5;->a:Ltk5$d$d$a$b;

    .line 5
    iput-object p2, p0, Lik5$b;->a:Ltk5$d$d$a$b;

    .line 6
    iget-object p2, p1, Lik5;->b:Luk5;

    .line 7
    iput-object p2, p0, Lik5$b;->b:Luk5;

    .line 8
    iget-object p2, p1, Lik5;->c:Ljava/lang/Boolean;

    .line 9
    iput-object p2, p0, Lik5$b;->c:Ljava/lang/Boolean;

    .line 10
    iget p1, p1, Lik5;->d:I

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lik5$b;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Ltk5$d$d$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lik5$b;->a:Ltk5$d$d$a$b;

    if-nez v0, :cond_0

    const-string v0, " execution"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lik5$b;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, " uiOrientation"

    .line 3
    invoke-static {v0, v1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lik5;

    iget-object v3, p0, Lik5$b;->a:Ltk5$d$d$a$b;

    iget-object v4, p0, Lik5$b;->b:Luk5;

    iget-object v5, p0, Lik5$b;->c:Ljava/lang/Boolean;

    iget-object v1, p0, Lik5$b;->d:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lik5;-><init>(Ltk5$d$d$a$b;Luk5;Ljava/lang/Boolean;ILik5$a;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
