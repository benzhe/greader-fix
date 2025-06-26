.class public final Lni3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lsi3;

.field public final synthetic f:Lmi3;


# direct methods
.method public constructor <init>(Lmi3;Lsi3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lni3;->f:Lmi3;

    iput-object p2, p0, Lni3;->e:Lsi3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lni3;->e:Lsi3;

    .line 2
    iget-object v1, v0, Lsi3;->c:Lig3;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lig3;->release()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lsi3;->c:Lig3;

    .line 5
    :cond_0
    iget-object v0, p0, Lni3;->f:Lmi3;

    .line 6
    iget-object v0, v0, Lmi3;->s:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    iget-object v2, p0, Lni3;->f:Lmi3;

    .line 9
    iget-object v2, v2, Lmi3;->s:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhj3;

    invoke-virtual {v2}, Lhj3;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
