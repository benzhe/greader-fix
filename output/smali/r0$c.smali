.class public abstract Lr0$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Landroid/graphics/ColorFilter;

.field public E:Z

.field public F:Landroid/content/res/ColorStateList;

.field public G:Landroid/graphics/PorterDuff$Mode;

.field public H:Z

.field public I:Z

.field public final a:Lr0;

.field public b:Landroid/content/res/Resources;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public g:[Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/graphics/Rect;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Lr0$c;Lr0;Landroid/content/res/Resources;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    .line 2
    iput v0, p0, Lr0$c;->c:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lr0$c;->i:Z

    .line 4
    iput-boolean v1, p0, Lr0$c;->l:Z

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lr0$c;->x:Z

    .line 6
    iput v1, p0, Lr0$c;->A:I

    .line 7
    iput v1, p0, Lr0$c;->B:I

    .line 8
    iput-object p2, p0, Lr0$c;->a:Lr0;

    if-eqz p3, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p1, Lr0$c;->b:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lr0$c;->b:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    .line 10
    iget p2, p1, Lr0$c;->c:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 11
    :goto_1
    sget v3, Lr0;->q:I

    if-nez p3, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_2
    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, p2

    .line 13
    :goto_3
    iput v0, p0, Lr0$c;->c:I

    if-eqz p1, :cond_c

    .line 14
    iget p2, p1, Lr0$c;->d:I

    iput p2, p0, Lr0$c;->d:I

    .line 15
    iget p2, p1, Lr0$c;->e:I

    iput p2, p0, Lr0$c;->e:I

    .line 16
    iput-boolean v2, p0, Lr0$c;->v:Z

    .line 17
    iput-boolean v2, p0, Lr0$c;->w:Z

    .line 18
    iget-boolean p2, p1, Lr0$c;->i:Z

    iput-boolean p2, p0, Lr0$c;->i:Z

    .line 19
    iget-boolean p2, p1, Lr0$c;->l:Z

    iput-boolean p2, p0, Lr0$c;->l:Z

    .line 20
    iget-boolean p2, p1, Lr0$c;->x:Z

    iput-boolean p2, p0, Lr0$c;->x:Z

    .line 21
    iget-boolean p2, p1, Lr0$c;->y:Z

    iput-boolean p2, p0, Lr0$c;->y:Z

    .line 22
    iget p2, p1, Lr0$c;->z:I

    iput p2, p0, Lr0$c;->z:I

    .line 23
    iget p2, p1, Lr0$c;->A:I

    iput p2, p0, Lr0$c;->A:I

    .line 24
    iget p2, p1, Lr0$c;->B:I

    iput p2, p0, Lr0$c;->B:I

    .line 25
    iget-boolean p2, p1, Lr0$c;->C:Z

    iput-boolean p2, p0, Lr0$c;->C:Z

    .line 26
    iget-object p2, p1, Lr0$c;->D:Landroid/graphics/ColorFilter;

    iput-object p2, p0, Lr0$c;->D:Landroid/graphics/ColorFilter;

    .line 27
    iget-boolean p2, p1, Lr0$c;->E:Z

    iput-boolean p2, p0, Lr0$c;->E:Z

    .line 28
    iget-object p2, p1, Lr0$c;->F:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lr0$c;->F:Landroid/content/res/ColorStateList;

    .line 29
    iget-object p2, p1, Lr0$c;->G:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lr0$c;->G:Landroid/graphics/PorterDuff$Mode;

    .line 30
    iget-boolean p2, p1, Lr0$c;->H:Z

    iput-boolean p2, p0, Lr0$c;->H:Z

    .line 31
    iget-boolean p2, p1, Lr0$c;->I:Z

    iput-boolean p2, p0, Lr0$c;->I:Z

    .line 32
    iget p2, p1, Lr0$c;->c:I

    if-ne p2, v0, :cond_6

    .line 33
    iget-boolean p2, p1, Lr0$c;->j:Z

    if-eqz p2, :cond_5

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lr0$c;->k:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lr0$c;->k:Landroid/graphics/Rect;

    .line 35
    iput-boolean v2, p0, Lr0$c;->j:Z

    .line 36
    :cond_5
    iget-boolean p2, p1, Lr0$c;->m:Z

    if-eqz p2, :cond_6

    .line 37
    iget p2, p1, Lr0$c;->n:I

    iput p2, p0, Lr0$c;->n:I

    .line 38
    iget p2, p1, Lr0$c;->o:I

    iput p2, p0, Lr0$c;->o:I

    .line 39
    iget p2, p1, Lr0$c;->p:I

    iput p2, p0, Lr0$c;->p:I

    .line 40
    iget p2, p1, Lr0$c;->q:I

    iput p2, p0, Lr0$c;->q:I

    .line 41
    iput-boolean v2, p0, Lr0$c;->m:Z

    .line 42
    :cond_6
    iget-boolean p2, p1, Lr0$c;->r:Z

    if-eqz p2, :cond_7

    .line 43
    iget p2, p1, Lr0$c;->s:I

    iput p2, p0, Lr0$c;->s:I

    .line 44
    iput-boolean v2, p0, Lr0$c;->r:Z

    .line 45
    :cond_7
    iget-boolean p2, p1, Lr0$c;->t:Z

    if-eqz p2, :cond_8

    .line 46
    iget-boolean p2, p1, Lr0$c;->u:Z

    iput-boolean p2, p0, Lr0$c;->u:Z

    .line 47
    iput-boolean v2, p0, Lr0$c;->t:Z

    .line 48
    :cond_8
    iget-object p2, p1, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 49
    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 50
    iget p3, p1, Lr0$c;->h:I

    iput p3, p0, Lr0$c;->h:I

    .line 51
    iget-object p1, p1, Lr0$c;->f:Landroid/util/SparseArray;

    if-eqz p1, :cond_9

    .line 52
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lr0$c;->f:Landroid/util/SparseArray;

    goto :goto_4

    .line 53
    :cond_9
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Lr0$c;->h:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lr0$c;->f:Landroid/util/SparseArray;

    .line 54
    :goto_4
    iget p1, p0, Lr0$c;->h:I

    :goto_5
    if-ge v1, p1, :cond_d

    .line 55
    aget-object p3, p2, v1

    if-eqz p3, :cond_b

    .line 56
    aget-object p3, p2, v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 57
    iget-object v0, p0, Lr0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 58
    :cond_a
    iget-object p3, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v0, p2, v1

    aput-object v0, p3, v1

    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object p1, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 60
    iput v1, p0, Lr0$c;->h:I

    :cond_d
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 6

    .line 1
    iget v0, p0, Lr0$c;->h:I

    .line 2
    iget-object v1, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    .line 3
    move-object v3, p0

    check-cast v3, Lt0$a;

    .line 4
    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v5, v3, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v4, v3, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 7
    new-array v1, v1, [[I

    .line 8
    iget-object v4, v3, Lt0$a;->J:[[I

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object v1, v3, Lt0$a;->J:[[I

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 12
    iget-object v3, p0, Lr0$c;->a:Lr0;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    iget-object v3, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    .line 14
    iget v3, p0, Lr0$c;->h:I

    add-int/2addr v3, v1

    iput v3, p0, Lr0$c;->h:I

    .line 15
    iget v1, p0, Lr0$c;->e:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, Lr0$c;->e:I

    .line 16
    iput-boolean v2, p0, Lr0$c;->r:Z

    .line 17
    iput-boolean v2, p0, Lr0$c;->t:Z

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lr0$c;->k:Landroid/graphics/Rect;

    .line 19
    iput-boolean v2, p0, Lr0$c;->j:Z

    .line 20
    iput-boolean v2, p0, Lr0$c;->m:Z

    .line 21
    iput-boolean v2, p0, Lr0$c;->v:Z

    return v0
.end method

.method public b()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lr0$c;->m:Z

    .line 2
    invoke-virtual {p0}, Lr0$c;->c()V

    .line 3
    iget v0, p0, Lr0$c;->h:I

    .line 4
    iget-object v1, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lr0$c;->o:I

    iput v2, p0, Lr0$c;->n:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lr0$c;->q:I

    iput v2, p0, Lr0$c;->p:I

    :goto_0
    if-ge v2, v0, :cond_4

    .line 7
    aget-object v3, v1, v2

    .line 8
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 9
    iget v5, p0, Lr0$c;->n:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lr0$c;->n:I

    .line 10
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 11
    iget v5, p0, Lr0$c;->o:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lr0$c;->o:I

    .line 12
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 13
    iget v5, p0, Lr0$c;->p:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lr0$c;->p:I

    .line 14
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 15
    iget v4, p0, Lr0$c;->q:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lr0$c;->q:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr0$c;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lr0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lr0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 5
    iget-object v4, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lr0$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 7
    iget v5, p0, Lr0$c;->z:I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 8
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9
    iget-object v5, p0, Lr0$c;->a:Lr0;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lr0$c;->f:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    .line 1
    iget v0, p0, Lr0$c;->h:I

    .line 2
    iget-object v1, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    .line 5
    :cond_0
    iget-object v4, p0, Lr0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final d(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lr0$c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 4
    iget-object v2, p0, Lr0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 5
    iget-object v3, p0, Lr0$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 7
    iget v3, p0, Lr0$c;->z:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 8
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lr0$c;->a:Lr0;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    iget-object v3, p0, Lr0$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    .line 11
    iget-object p1, p0, Lr0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 12
    iget-object p1, p0, Lr0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iput-object v1, p0, Lr0$c;->f:Landroid/util/SparseArray;

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method public abstract e()V
.end method

.method public final f(Landroid/content/res/Resources;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iput-object p1, p0, Lr0$c;->b:Landroid/content/res/Resources;

    .line 2
    sget v0, Lr0;->q:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .line 4
    :cond_0
    iget v0, p0, Lr0$c;->c:I

    .line 5
    iput p1, p0, Lr0$c;->c:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lr0$c;->m:Z

    .line 7
    iput-boolean p1, p0, Lr0$c;->j:Z

    :cond_1
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget v0, p0, Lr0$c;->d:I

    iget v1, p0, Lr0$c;->e:I

    or-int/2addr v0, v1

    return v0
.end method
