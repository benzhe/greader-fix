.class public final synthetic Lit5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx5;


# instance fields
.field public final a:Llt5;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Llt5;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lit5;->a:Llt5;

    iput-object p2, p0, Lit5;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lit5;->a:Llt5;

    iget-object v1, p0, Lit5;->b:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Llt5;->f([B)Lfu5;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lfu5;->a:Lbu5;

    .line 3
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
