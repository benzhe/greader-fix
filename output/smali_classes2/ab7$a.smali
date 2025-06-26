.class public Lab7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc47$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab7;->b(Lc47$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc47$h;

.field public final synthetic b:Lab7;


# direct methods
.method public constructor <init>(Lab7;Lc47$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab7$a;->b:Lab7;

    iput-object p2, p0, Lab7$a;->a:Lc47$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj37;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lab7$a;->b:Lab7;

    iget-object v1, p0, Lab7$a;->a:Lc47$h;

    .line 2
    iget-object v2, v0, Lab7;->c:Ljava/util/Map;

    .line 3
    invoke-virtual {v1}, Lc47$h;->a()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v4, "%s does not have exactly one group"

    invoke-static {v6, v4, v3}, Lc50;->F(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq37;

    .line 6
    new-instance v4, Lq37;

    .line 7
    iget-object v3, v3, Lq37;->a:Ljava/util/List;

    .line 8
    sget-object v5, Lv27;->b:Lv27;

    invoke-direct {v4, v3, v5}, Lq37;-><init>(Ljava/util/List;Lv27;)V

    .line 9
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p1, Lj37;->a:Li37;

    .line 11
    sget-object v3, Li37;->h:Li37;

    if-ne v2, v3, :cond_2

    .line 12
    invoke-virtual {v1}, Lc47$h;->d()V

    .line 13
    :cond_2
    invoke-static {v1}, Lab7;->e(Lc47$h;)Lab7$d;

    move-result-object v1

    iput-object p1, v1, Lab7$d;->a:Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Lab7;->g()V

    :goto_1
    return-void
.end method
