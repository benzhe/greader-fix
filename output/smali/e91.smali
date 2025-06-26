.class public final Le91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua1;
.implements Lob1;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lsk2;

.field public final g:Lel0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsk2;Lel0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le91;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le91;->f:Lsk2;

    .line 4
    iput-object p3, p0, Le91;->g:Lel0;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Le91;->f:Lsk2;

    iget-object v0, v0, Lsk2;->X:Lcl0;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcl0;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Le91;->f:Lsk2;

    iget-object v1, v1, Lsk2;->X:Lcl0;

    iget-object v1, v1, Lcl0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Le91;->f:Lsk2;

    iget-object v1, v1, Lsk2;->X:Lcl0;

    iget-object v1, v1, Lcl0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object v1, p0, Le91;->g:Lel0;

    iget-object v2, p0, Le91;->e:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lel0;->b(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le91;->g:Lel0;

    invoke-interface {p1}, Lel0;->a()V

    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
