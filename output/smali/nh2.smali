.class public final synthetic Lnh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lcn2;

.field public final b:Lh71;


# direct methods
.method public constructor <init>(Loh2;Lcn2;Lh71;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnh2;->a:Lcn2;

    iput-object p3, p0, Lnh2;->b:Lh71;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 7

    .line 1
    iget-object v0, p0, Lnh2;->a:Lcn2;

    iget-object v1, p0, Lnh2;->b:Lh71;

    check-cast p1, Lhl2;

    .line 2
    iput-object p1, v0, Lcn2;->b:Lhl2;

    .line 3
    iget-object v0, p1, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk2;

    .line 4
    iget-object v4, v4, Lsk2;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "FirstPartyRenderer"

    .line 5
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lh71;->c(Law2;)Law2;

    move-result-object p1

    return-object p1
.end method
