.class public Lsi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lul5$b;


# instance fields
.field public final synthetic a:Lii5;


# direct methods
.method public constructor <init>(Lii5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsi5;->a:Lii5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpm5;)Lul5;
    .locals 9

    .line 1
    iget-object v0, p1, Lpm5;->c:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lpm5;->d:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lpm5;->e:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lsi5;->a:Lii5;

    .line 5
    iget-object v4, v2, Lii5;->a:Landroid/content/Context;

    const-string v5, "com.crashlytics.ApiEndpoint"

    const-string v6, "string"

    .line 6
    invoke-static {v4, v5, v6}, Lvh5;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 7
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    .line 8
    :goto_0
    new-instance v5, Lbm5;

    iget-object v6, v2, Lii5;->f:Lfl5;

    const-string v7, "17.3.0"

    .line 9
    invoke-direct {v5, v4, v0, v6, v7}, Lbm5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcm5;

    iget-object v2, v2, Lii5;->f:Lfl5;

    .line 11
    invoke-direct {v0, v4, v1, v2, v7}, Lcm5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ljava/lang/String;)V

    .line 12
    new-instance v7, Lzl5;

    invoke-direct {v7, v5, v0}, Lzl5;-><init>(Lbm5;Lcm5;)V

    .line 13
    new-instance v0, Lul5;

    iget-object v1, p0, Lsi5;->a:Lii5;

    .line 14
    iget-object v1, v1, Lii5;->i:Lqh5;

    .line 15
    iget-object v4, v1, Lqh5;->a:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcj5;->i(Lpm5;)Lcj5;

    move-result-object v5

    iget-object p1, p0, Lsi5;->a:Lii5;

    .line 17
    iget-object v6, p1, Lii5;->m:Ltl5;

    .line 18
    iget-object v8, p1, Lii5;->n:Lul5$a;

    move-object v2, v0

    .line 19
    invoke-direct/range {v2 .. v8}, Lul5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcj5;Ltl5;Lam5;Lul5$a;)V

    return-object v0
.end method
