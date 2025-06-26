.class public final synthetic Lhv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk3;


# instance fields
.field public final a:Lcv0;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcv0;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv0;->a:Lcv0;

    iput-object p2, p0, Lhv0;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lhv0;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lek3;
    .locals 8

    iget-object v0, p0, Lhv0;->a:Lcv0;

    iget-object v2, p0, Lhv0;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lhv0;->c:Z

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v7, Lxu0;

    if-eqz v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v3, v1

    .line 3
    :goto_0
    iget-object v1, v0, Lcv0;->j:Lfu0;

    iget v4, v1, Lfu0;->d:I

    iget v5, v1, Lfu0;->e:I

    iget v6, v1, Lfu0;->h:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lxu0;-><init>(Ljava/lang/String;Lsk3;III)V

    .line 4
    iget-object v0, v0, Lcv0;->w:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v7
.end method
