.class public abstract Lt27;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lu27$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt27$c;,
        Lt27$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$a0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "TVH;>;",
        "Landroid/widget/Filterable;",
        "Lu27$a;"
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Landroid/database/Cursor;

.field public g:Landroid/content/Context;

.field public h:I

.field public i:Lt27$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt27<",
            "TVH;>.b;"
        }
    .end annotation
.end field

.field public j:Landroid/database/DataSetObserver;

.field public k:Lu27;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iput-object p2, p0, Lt27;->f:Landroid/database/Cursor;

    .line 3
    iput-boolean v1, p0, Lt27;->e:Z

    .line 4
    iput-object p1, p0, Lt27;->g:Landroid/content/Context;

    if-eqz v1, :cond_1

    const-string p1, "_id"

    .line 5
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lt27;->h:I

    const/4 p1, 0x2

    and-int/2addr p3, p1

    const/4 v2, 0x0

    if-ne p3, p1, :cond_2

    .line 6
    new-instance p1, Lt27$b;

    invoke-direct {p1, p0}, Lt27$b;-><init>(Lt27;)V

    iput-object p1, p0, Lt27;->i:Lt27$b;

    .line 7
    new-instance p1, Lt27$c;

    invoke-direct {p1, p0, v2}, Lt27$c;-><init>(Lt27;Lt27$a;)V

    iput-object p1, p0, Lt27;->j:Landroid/database/DataSetObserver;

    goto :goto_2

    .line 8
    :cond_2
    iput-object v2, p0, Lt27;->i:Lt27$b;

    .line 9
    iput-object v2, p0, Lt27;->j:Landroid/database/DataSetObserver;

    :goto_2
    if-eqz v1, :cond_4

    .line 10
    iget-object p1, p0, Lt27;->i:Lt27$b;

    if-eqz p1, :cond_3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lt27;->j:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_4

    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 12
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt27;->f:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lt27;->i:Lt27$b;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    :cond_1
    iget-object v1, p0, Lt27;->j:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_2
    iput-object p1, p0, Lt27;->f:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    .line 5
    iget-object v1, p0, Lt27;->i:Lt27$b;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    :cond_3
    iget-object v1, p0, Lt27;->j:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lt27;->h:I

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lt27;->e:Z

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lt27;->h:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lt27;->e:Z

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :goto_0
    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lt27;->f:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Lt27;->k:Lu27;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lu27;

    invoke-direct {v0, p0}, Lu27;-><init>(Lu27$a;)V

    iput-object v0, p0, Lt27;->k:Lu27;

    .line 3
    :cond_0
    iget-object v0, p0, Lt27;->k:Lu27;

    return-object v0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lt27;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt27;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lt27;->f:Landroid/database/Cursor;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt27;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt27;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lt27;->e:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt27;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lt27;->f:Landroid/database/Cursor;

    iget v0, p0, Lt27;->h:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lt27;->e:Z

    if-eqz v3, :cond_4a

    .line 2
    iget-object v3, v0, Lt27;->f:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 3
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    instance-of v3, v2, Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 4
    check-cast v2, Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 5
    invoke-virtual {v2}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->getConfiguration()Ls27;

    move-result-object v3

    if-nez v3, :cond_4

    .line 6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v6

    const v7, 0x7f0400e6

    .line 8
    invoke-static {v3, v7}, Ln56;->T0(Landroid/content/Context;I)I

    move-result v8

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 10
    invoke-static {v3, v7}, Ln56;->T0(Landroid/content/Context;I)I

    move-result v7

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 12
    iget v7, v6, Lhw6;->s:I

    if-lez v7, :cond_0

    sget-object v7, Ls27$a;->f:Ls27$a;

    goto :goto_0

    :cond_0
    sget-object v7, Ls27$a;->g:Ls27$a;

    .line 13
    :goto_0
    iget v9, v7, Ls27$a;->a:F

    .line 14
    iget-object v7, v7, Ls27$a;->b:Landroid/view/animation/Interpolator;

    .line 15
    iget v6, v6, Lhw6;->t:I

    if-lez v6, :cond_1

    sget-object v6, Ls27$a;->f:Ls27$a;

    goto :goto_1

    :cond_1
    sget-object v6, Ls27$a;->g:Ls27$a;

    .line 16
    :goto_1
    iget v10, v6, Ls27$a;->a:F

    .line 17
    iget-object v6, v6, Ls27$a;->b:Landroid/view/animation/Interpolator;

    .line 18
    new-instance v11, Ls27;

    invoke-direct {v11}, Ls27;-><init>()V

    .line 19
    iput v5, v11, Ls27;->a:I

    .line 20
    iput v5, v11, Ls27;->b:I

    .line 21
    iput v8, v11, Ls27;->c:I

    .line 22
    iput v3, v11, Ls27;->d:I

    .line 23
    iput-boolean v4, v11, Ls27;->e:Z

    .line 24
    iput-boolean v4, v11, Ls27;->f:Z

    if-nez v7, :cond_2

    .line 25
    sget-object v3, Ls27$a;->e:Ls27$a;

    .line 26
    iget v9, v3, Ls27$a;->a:F

    .line 27
    iget-object v7, v3, Ls27$a;->b:Landroid/view/animation/Interpolator;

    .line 28
    :cond_2
    iput v9, v11, Ls27;->g:F

    .line 29
    iput-object v7, v11, Ls27;->i:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_3

    .line 30
    sget-object v3, Ls27$a;->e:Ls27$a;

    .line 31
    iget v10, v3, Ls27$a;->a:F

    .line 32
    iget-object v6, v3, Ls27$a;->b:Landroid/view/animation/Interpolator;

    .line 33
    :cond_3
    iput v10, v11, Ls27;->h:F

    .line 34
    iput-object v6, v11, Ls27;->j:Landroid/view/animation/Interpolator;

    .line 35
    invoke-virtual {v2, v11}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeConfiguration(Ls27;)V

    .line 36
    :cond_4
    invoke-virtual {v2}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->getSwipeListener()Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;

    move-result-object v3

    if-nez v3, :cond_5

    .line 37
    new-instance v3, Lt27$a;

    invoke-direct {v3, v0, v1}, Lt27$a;-><init>(Lt27;Landroidx/recyclerview/widget/RecyclerView$a0;)V

    invoke-virtual {v2, v3}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeListener(Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;)V

    .line 38
    :cond_5
    iget-object v2, v0, Lt27;->g:Landroid/content/Context;

    iget-object v3, v0, Lt27;->f:Landroid/database/Cursor;

    move-object v4, v0

    check-cast v4, Ler6;

    .line 39
    check-cast v1, Lnr6;

    .line 40
    iget-object v5, v4, Ler6;->l:Lap6;

    if-nez v5, :cond_6

    .line 41
    new-instance v5, Lap6;

    invoke-direct {v5, v3}, Lap6;-><init>(Landroid/database/Cursor;)V

    iput-object v5, v4, Ler6;->l:Lap6;

    goto :goto_2

    .line 42
    :cond_6
    invoke-virtual {v5, v3}, Lap6;->q(Landroid/database/Cursor;)V

    .line 43
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 44
    instance-of v6, v1, Lor6;

    const-string v7, "<.*?$"

    const-string v8, "<"

    const-string v9, ""

    const/4 v10, 0x3

    if-eqz v6, :cond_24

    .line 45
    move-object v6, v1

    check-cast v6, Lor6;

    .line 46
    iget-object v13, v4, Ler6;->l:Lap6;

    iget-boolean v14, v4, Ler6;->p:Z

    iget-wide v11, v4, Ler6;->o:J

    .line 47
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v15

    .line 48
    iget v0, v15, Lhw6;->q:I

    move/from16 v16, v5

    if-eq v0, v10, :cond_8

    iget v5, v15, Lhw6;->r:I

    if-ne v5, v10, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v0, :cond_9

    .line 49
    iget-object v10, v6, Lor6;->r:Landroid/widget/ImageView;

    invoke-virtual {v6, v13, v0, v10}, Lnr6;->a(Lap6;ILandroid/widget/ImageView;)V

    .line 50
    iget-object v0, v6, Lor6;->r:Landroid/widget/ImageView;

    move-wide/from16 v17, v11

    iget-wide v10, v13, Lap6;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    move-wide/from16 v17, v11

    .line 51
    :goto_5
    iget v0, v15, Lhw6;->r:I

    if-eqz v0, :cond_a

    .line 52
    iget-object v10, v6, Lor6;->t:Landroid/widget/ImageView;

    invoke-virtual {v6, v13, v0, v10}, Lnr6;->a(Lap6;ILandroid/widget/ImageView;)V

    .line 53
    iget-object v0, v6, Lor6;->t:Landroid/widget/ImageView;

    iget-wide v10, v13, Lap6;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 54
    :cond_a
    iget-boolean v0, v13, Lap6;->v:Z

    if-eqz v0, :cond_b

    .line 55
    iget-object v0, v6, Lor6;->v:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 56
    :cond_b
    iget-object v0, v6, Lor6;->v:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, v6, Lor6;->v:Landroid/widget/ImageView;

    iget-boolean v10, v13, Lap6;->u:Z

    if-eqz v10, :cond_c

    invoke-static {}, Llw6;->f()I

    move-result v10

    goto :goto_6

    :cond_c
    invoke-static {}, Llw6;->g()I

    move-result v10

    :goto_6
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    :goto_7
    iget-object v0, v6, Lor6;->w:Landroid/widget/ImageView;

    iget-boolean v10, v13, Lap6;->r:Z

    if-eqz v10, :cond_d

    if-nez v5, :cond_d

    const/4 v5, 0x0

    goto :goto_8

    :cond_d
    const/16 v5, 0x8

    :goto_8
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, v6, Lor6;->x:Landroid/widget/ImageView;

    iget-boolean v5, v13, Lap6;->s:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_9

    :cond_e
    const/16 v5, 0x8

    :goto_9
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-virtual {v13}, Lap6;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    invoke-virtual {v13}, Lap6;->m()Lcp6;

    move-result-object v0

    .line 62
    iget-object v5, v6, Lor6;->y:Landroid/widget/ImageView;

    iget-object v0, v0, Lcp6;->a:Ljava/lang/String;

    iget-object v10, v13, Lap6;->f:Ljava/lang/String;

    .line 63
    invoke-static {v0, v10}, Ln56;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_a

    .line 64
    :cond_f
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_a
    if-eqz v0, :cond_10

    const v0, 0x7f08015b

    goto :goto_b

    :cond_10
    const v0, 0x7f08015a

    .line 66
    :goto_b
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, v6, Lor6;->y:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 68
    :cond_11
    iget-object v0, v6, Lor6;->y:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    const-string v0, "<b><font color=\'"

    .line 69
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    iget-boolean v5, v13, Lap6;->v:Z

    invoke-static {v5}, Llw6;->d(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lap6;->h:Ljava/lang/String;

    .line 71
    invoke-static {v5}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</font></b>"

    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 74
    iget-object v10, v6, Lor6;->z:Landroid/widget/ImageView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-boolean v10, v15, Lhw6;->d:Z

    if-eqz v10, :cond_17

    .line 76
    iget-object v10, v13, Lap6;->i:Ljava/lang/String;

    .line 77
    iget-boolean v11, v6, Lnr6;->h:Z

    if-eqz v11, :cond_15

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 78
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x5dc

    if-le v11, v12, :cond_12

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_12
    const/4 v11, 0x1

    invoke-static {v10, v11}, Ln56;->m2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 79
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_15

    .line 80
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 81
    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    :cond_13
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, v6, Lnr6;->g:I

    if-le v7, v8, :cond_14

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_14
    const-string v7, " - "

    .line 83
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_15
    iget-wide v7, v6, Lnr6;->e:J

    iget-wide v10, v13, Lap6;->e:J

    cmp-long v12, v7, v10

    if-nez v12, :cond_16

    if-eqz v14, :cond_18

    .line 85
    :cond_16
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v7

    .line 86
    iget-object v8, v6, Lor6;->z:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 87
    iget-object v8, v6, Lor6;->z:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-virtual {v13}, Lap6;->p()Z

    move-result v8

    if-eqz v8, :cond_18

    iget-boolean v8, v6, Lnr6;->i:Z

    if-eqz v8, :cond_18

    .line 89
    iget-boolean v8, v6, Lnr6;->k:Z

    invoke-virtual {v7, v8}, Lhz6;->e(Z)V

    .line 90
    invoke-virtual {v13}, Lap6;->n()Ljava/lang/String;

    move-result-object v20

    iget-object v8, v6, Lor6;->z:Landroid/widget/ImageView;

    new-instance v10, Lpr6;

    invoke-direct {v10, v6}, Lpr6;-><init>(Lor6;)V

    .line 91
    new-instance v11, Lh07;

    invoke-direct {v11, v8}, Lh07;-><init>(Landroid/widget/ImageView;)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v7

    move-object/from16 v21, v11

    move-object/from16 v23, v10

    invoke-virtual/range {v19 .. v24}, Lhz6;->h(Ljava/lang/String;Lg07;Lgz6;Ll07;Lk07;)V

    goto :goto_d

    .line 92
    :cond_17
    iget-object v7, v6, Lor6;->z:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :cond_18
    :goto_d
    iget-object v7, v6, Lor6;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-wide v7, v6, Lnr6;->e:J

    iget-wide v10, v13, Lap6;->e:J

    cmp-long v0, v7, v10

    if-nez v0, :cond_19

    if-eqz v14, :cond_22

    .line 95
    :cond_19
    iget-object v0, v6, Lor6;->o:Landroid/widget/TextView;

    iget-wide v7, v13, Lap6;->q:J

    const-wide/16 v10, 0x3e8

    mul-long v7, v7, v10

    invoke-static {v2, v7, v8}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, v13, Lap6;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, v9

    goto :goto_e

    :cond_1a
    iget-object v0, v13, Lap6;->A:Ljava/lang/String;

    .line 97
    :goto_e
    iget-object v7, v6, Lor6;->p:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, v13, Lap6;->o:Ljava/lang/String;

    goto :goto_f

    :cond_1b
    move-object v8, v0

    :goto_f
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-boolean v7, v15, Lhw6;->h:Z

    if-eqz v7, :cond_1c

    sget-object v7, Lon6;->a:Lew6;

    iget-object v7, v7, Lew6;->a:Lip6;

    if-nez v7, :cond_1c

    goto :goto_10

    .line 99
    :cond_1c
    iget-object v0, v6, Lor6;->A:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    iget-wide v10, v13, Lap6;->q:J

    const-wide/16 v19, 0x3e8

    mul-long v10, v10, v19

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    if-nez v5, :cond_1d

    const/4 v3, 0x1

    goto :goto_13

    :cond_1d
    add-int/lit8 v7, v5, -0x1

    .line 100
    invoke-interface {v3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 101
    iget-boolean v7, v15, Lhw6;->h:Z

    if-eqz v7, :cond_1e

    sget-object v7, Lon6;->a:Lew6;

    iget-object v7, v7, Lew6;->a:Lip6;

    if-nez v7, :cond_1e

    const-string v7, "sub_title"

    .line 102
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_1f

    .line 103
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    .line 104
    :cond_1e
    iget-object v7, v6, Lor6;->A:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    const-string v9, "updated_time"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    :cond_1f
    :goto_11
    if-eqz v9, :cond_20

    .line 105
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    const/4 v7, 0x1

    goto :goto_12

    :cond_20
    const/4 v7, 0x0

    .line 106
    :goto_12
    invoke-interface {v3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v3, v7

    :goto_13
    if-eqz v3, :cond_21

    .line 107
    iget-object v3, v6, Lor6;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, v6, Lor6;->n:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14

    .line 109
    :cond_21
    iget-object v0, v6, Lor6;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_22
    :goto_14
    iget-object v0, v6, Lnr6;->l:Landroid/widget/Checkable;

    iget-wide v5, v13, Lap6;->e:J

    cmp-long v3, v17, v5

    if-nez v3, :cond_23

    const/4 v3, 0x1

    goto :goto_15

    :cond_23
    const/4 v3, 0x0

    :goto_15
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto/16 :goto_2f

    :cond_24
    move/from16 v16, v5

    .line 111
    instance-of v0, v1, Llr6;

    const-string v3, ".gif"

    if-eqz v0, :cond_3d

    .line 112
    move-object v0, v1

    check-cast v0, Llr6;

    .line 113
    iget-object v5, v4, Ler6;->l:Lap6;

    iget-boolean v6, v4, Ler6;->p:Z

    iget-wide v11, v4, Ler6;->o:J

    .line 114
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v13

    .line 115
    iget v14, v13, Lhw6;->q:I

    if-eq v14, v10, :cond_26

    iget v15, v13, Lhw6;->r:I

    if-ne v15, v10, :cond_25

    goto :goto_16

    :cond_25
    const/4 v10, 0x0

    goto :goto_17

    :cond_26
    :goto_16
    const/4 v10, 0x1

    :goto_17
    if-eqz v14, :cond_27

    .line 116
    iget-object v15, v0, Llr6;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v14, v15}, Lnr6;->a(Lap6;ILandroid/widget/ImageView;)V

    .line 117
    iget-object v14, v0, Llr6;->r:Landroid/widget/ImageView;

    move-wide/from16 v17, v11

    iget-wide v11, v5, Lap6;->e:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_18

    :cond_27
    move-wide/from16 v17, v11

    .line 118
    :goto_18
    iget v11, v13, Lhw6;->r:I

    if-eqz v11, :cond_28

    .line 119
    iget-object v12, v0, Llr6;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v11, v12}, Lnr6;->a(Lap6;ILandroid/widget/ImageView;)V

    .line 120
    iget-object v11, v0, Llr6;->t:Landroid/widget/ImageView;

    iget-wide v14, v5, Lap6;->e:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 121
    :cond_28
    iget-boolean v11, v5, Lap6;->v:Z

    if-eqz v11, :cond_29

    .line 122
    iget-object v11, v0, Llr6;->v:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    .line 123
    :cond_29
    iget-object v11, v0, Llr6;->v:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v11, v0, Llr6;->v:Landroid/widget/ImageView;

    iget-boolean v12, v5, Lap6;->u:Z

    if-eqz v12, :cond_2a

    invoke-static {}, Llw6;->f()I

    move-result v12

    goto :goto_19

    :cond_2a
    invoke-static {}, Llw6;->g()I

    move-result v12

    :goto_19
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_1a
    iget-object v11, v0, Llr6;->w:Landroid/widget/ImageView;

    iget-boolean v12, v5, Lap6;->r:Z

    if-eqz v12, :cond_2b

    if-nez v10, :cond_2b

    const/4 v10, 0x0

    goto :goto_1b

    :cond_2b
    const/16 v10, 0x8

    :goto_1b
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v10, v0, Llr6;->x:Landroid/widget/ImageView;

    iget-boolean v11, v5, Lap6;->s:Z

    if-eqz v11, :cond_2c

    const/4 v11, 0x0

    goto :goto_1c

    :cond_2c
    const/16 v11, 0x8

    :goto_1c
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {v5}, Lap6;->b()Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 128
    invoke-virtual {v5}, Lap6;->m()Lcp6;

    move-result-object v10

    .line 129
    iget-object v11, v0, Llr6;->y:Landroid/widget/ImageView;

    iget-object v10, v10, Lcp6;->a:Ljava/lang/String;

    iget-object v12, v5, Lap6;->f:Ljava/lang/String;

    .line 130
    invoke-static {v10, v12}, Ln56;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2d

    const/4 v10, 0x0

    goto :goto_1d

    .line 131
    :cond_2d
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v10

    :goto_1d
    if-eqz v10, :cond_2e

    const v10, 0x7f08015b

    goto :goto_1e

    :cond_2e
    const v10, 0x7f08015a

    .line 133
    :goto_1e
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v10, v0, Llr6;->y:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    .line 135
    :cond_2f
    iget-object v10, v0, Llr6;->y:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :goto_1f
    iget-object v10, v0, Llr6;->p:Landroid/widget/TextView;

    iget-boolean v11, v5, Lap6;->v:Z

    invoke-static {v11}, Llw6;->d(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v10, v0, Llr6;->A:Landroid/widget/ImageView;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-wide v10, v0, Lnr6;->e:J

    iget-wide v14, v5, Lap6;->e:J

    cmp-long v12, v10, v14

    if-nez v12, :cond_30

    if-eqz v6, :cond_39

    .line 139
    :cond_30
    iget-object v6, v0, Llr6;->n:Landroid/widget/TextView;

    iget-wide v10, v5, Lap6;->q:J

    const-wide/16 v14, 0x3e8

    mul-long v10, v10, v14

    invoke-static {v2, v10, v11}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, v5, Lap6;->A:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    move-object v6, v9

    goto :goto_20

    :cond_31
    iget-object v6, v5, Lap6;->A:Ljava/lang/String;

    .line 141
    :goto_20
    iget-object v10, v0, Llr6;->o:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_32

    iget-object v6, v5, Lap6;->o:Ljava/lang/String;

    :cond_32
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v6, v0, Llr6;->p:Landroid/widget/TextView;

    iget-object v10, v5, Lap6;->h:Ljava/lang/String;

    invoke-static {v10}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-boolean v6, v13, Lhw6;->d:Z

    if-eqz v6, :cond_3a

    .line 144
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v6

    .line 145
    iget-object v10, v0, Llr6;->z:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 146
    iget-object v10, v0, Llr6;->z:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v5}, Lap6;->p()Z

    move-result v10

    if-eqz v10, :cond_35

    iget-boolean v10, v0, Lnr6;->i:Z

    if-eqz v10, :cond_35

    .line 148
    iget-object v7, v0, Llr6;->q:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v7, v0, Llr6;->z:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    invoke-virtual {v5}, Lap6;->n()Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_34

    .line 152
    iget-object v9, v0, Llr6;->A:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    const v3, 0x7f080103

    goto :goto_21

    :cond_33
    const v3, 0x7f08010a

    :goto_21
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v3, v0, Llr6;->A:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22

    .line 154
    :cond_34
    iget-object v3, v0, Llr6;->A:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :goto_22
    iget-boolean v3, v0, Lnr6;->k:Z

    invoke-virtual {v6, v3}, Lhz6;->e(Z)V

    .line 156
    invoke-virtual {v5}, Lap6;->n()Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Llr6;->z:Landroid/widget/ImageView;

    invoke-virtual {v6, v3, v7}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_25

    :cond_35
    const/16 v3, 0x8

    .line 157
    iget-object v6, v0, Llr6;->z:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v6, v0, Llr6;->A:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-boolean v3, v0, Lnr6;->h:Z

    if-eqz v3, :cond_39

    iget-object v3, v5, Lap6;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 160
    iget-object v3, v5, Lap6;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x1f4

    if-le v3, v6, :cond_36

    iget-object v3, v5, Lap6;->i:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    :cond_36
    iget-object v3, v5, Lap6;->i:Ljava/lang/String;

    :goto_23
    const/4 v6, 0x1

    invoke-static {v3, v6}, Ln56;->m2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3b

    .line 162
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 163
    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    :cond_37
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, v0, Lnr6;->g:I

    if-le v7, v8, :cond_38

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_38
    const/4 v7, 0x0

    .line 165
    :goto_24
    iget-object v8, v0, Llr6;->q:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v3, v0, Llr6;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_26

    :cond_39
    :goto_25
    const/4 v6, 0x1

    goto :goto_26

    :cond_3a
    const/4 v6, 0x1

    .line 167
    iget-object v3, v0, Llr6;->A:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v3, v0, Llr6;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v3, v0, Llr6;->z:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v3, v0, Llr6;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_3b
    :goto_26
    iget-object v0, v0, Lnr6;->l:Landroid/widget/Checkable;

    iget-wide v7, v5, Lap6;->e:J

    cmp-long v3, v17, v7

    if-nez v3, :cond_3c

    goto :goto_27

    :cond_3c
    const/4 v6, 0x0

    :goto_27
    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    goto/16 :goto_2f

    :cond_3d
    const/4 v0, 0x1

    .line 172
    instance-of v5, v1, Lmr6;

    if-eqz v5, :cond_47

    .line 173
    move-object v5, v1

    check-cast v5, Lmr6;

    .line 174
    iget-object v6, v4, Ler6;->l:Lap6;

    iget-boolean v7, v4, Ler6;->p:Z

    iget-wide v8, v4, Ler6;->o:J

    .line 175
    iget-object v10, v5, Lmr6;->q:Landroid/view/View;

    iget-boolean v11, v6, Lap6;->r:Z

    if-eqz v11, :cond_3e

    const/4 v11, 0x0

    goto :goto_28

    :cond_3e
    const/16 v11, 0x8

    :goto_28
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v10, v5, Lmr6;->r:Landroid/view/View;

    iget-boolean v11, v6, Lap6;->s:Z

    if-eqz v11, :cond_3f

    const/4 v11, 0x0

    goto :goto_29

    :cond_3f
    const/16 v11, 0x8

    :goto_29
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v10, v5, Lmr6;->s:Landroid/view/View;

    invoke-virtual {v6}, Lap6;->b()Z

    move-result v11

    if-eqz v11, :cond_40

    const/4 v11, 0x0

    goto :goto_2a

    :cond_40
    const/16 v11, 0x8

    :goto_2a
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v10, v5, Lmr6;->n:Landroid/widget/TextView;

    iget-boolean v11, v6, Lap6;->v:Z

    if-eqz v11, :cond_41

    const v11, -0x333334

    goto :goto_2b

    :cond_41
    const/4 v11, -0x1

    :goto_2b
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v10, v5, Lmr6;->p:Landroid/widget/ImageView;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 180
    iget-wide v10, v5, Lnr6;->e:J

    iget-wide v12, v6, Lap6;->e:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_42

    if-eqz v7, :cond_45

    .line 181
    :cond_42
    iget-object v7, v5, Lmr6;->n:Landroid/widget/TextView;

    iget-object v10, v6, Lap6;->h:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v7

    .line 183
    iget-object v10, v5, Lmr6;->o:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 184
    iget-object v10, v5, Lmr6;->o:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {v6}, Lap6;->p()Z

    move-result v10

    if-eqz v10, :cond_44

    iget-boolean v10, v5, Lnr6;->i:Z

    if-eqz v10, :cond_44

    .line 186
    iget-boolean v10, v5, Lnr6;->k:Z

    invoke-virtual {v7, v10}, Lhz6;->e(Z)V

    .line 187
    invoke-virtual {v6}, Lap6;->n()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Lmr6;->o:Landroid/widget/ImageView;

    invoke-virtual {v7, v10, v11}, Lhz6;->f(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 188
    invoke-virtual {v6}, Lap6;->n()Ljava/lang/String;

    move-result-object v7

    .line 189
    iget-object v10, v5, Lmr6;->p:Landroid/widget/ImageView;

    if-eqz v7, :cond_43

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    const v3, 0x7f080103

    goto :goto_2c

    :cond_43
    const v3, 0x7f08010a

    :goto_2c
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v3, v5, Lmr6;->p:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 191
    :cond_44
    iget-object v3, v5, Lmr6;->p:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :cond_45
    :goto_2d
    iget-object v3, v5, Lnr6;->l:Landroid/widget/Checkable;

    iget-wide v5, v6, Lap6;->e:J

    cmp-long v7, v8, v5

    if-nez v7, :cond_46

    goto :goto_2e

    :cond_46
    const/4 v0, 0x0

    :goto_2e
    invoke-interface {v3, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 193
    :cond_47
    :goto_2f
    iget-object v0, v4, Ler6;->l:Lap6;

    iget-wide v5, v0, Lap6;->e:J

    iput-wide v5, v1, Lnr6;->e:J

    move/from16 v0, v16

    .line 194
    iput v0, v1, Lnr6;->f:I

    .line 195
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    if-eqz v1, :cond_48

    .line 196
    check-cast v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 197
    invoke-virtual {v0}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->getConfiguration()Ls27;

    move-result-object v0

    .line 198
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v1

    .line 199
    iget-object v2, v4, Ler6;->l:Lap6;

    iget v3, v1, Lhw6;->s:I

    invoke-virtual {v4, v2, v3}, Ler6;->a(Lap6;I)I

    move-result v2

    .line 200
    iput v2, v0, Ls27;->a:I

    .line 201
    iget-object v2, v4, Ler6;->l:Lap6;

    iget v1, v1, Lhw6;->t:I

    invoke-virtual {v4, v2, v1}, Ler6;->a(Lap6;I)I

    move-result v1

    .line 202
    iput v1, v0, Ls27;->b:I

    :cond_48
    return-void

    .line 203
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "couldn\'t move cursor to position "

    invoke-static {v1, v2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/tr4android/recyclerviewslideitem/R$layout;->item_swipe:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 3
    move-object p2, p0

    check-cast p2, Ler6;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    .line 6
    iget v3, v2, Lhw6;->s:I

    const/4 v4, 0x1

    if-gtz v3, :cond_0

    iget v2, v2, Lhw6;->t:I

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 7
    :cond_1
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    iget v2, v2, Lhw6;->c:I

    if-ne v2, v4, :cond_2

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0063

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance v1, Lmr6;

    iget v2, p2, Ler6;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p2, Ler6;->n:I

    invoke-direct {v1, v0, p1, v2}, Lmr6;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    iget v2, v2, Lhw6;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0060

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance v1, Llr6;

    iget v2, p2, Ler6;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p2, Ler6;->n:I

    invoke-direct {v1, v0, p1, v2}, Llr6;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0066

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance v1, Lor6;

    invoke-direct {v1, v0, p1}, Lor6;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 15
    :goto_0
    iget-object p1, p2, Ler6;->q:Lt07;

    invoke-virtual {v1, p1}, Lnr6;->b(Lt07;)V

    .line 16
    iget-object p1, p2, Ler6;->s:Lbn6;

    if-nez p1, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, v1, Lnr6;->m:Lan6;

    const-string v2, "EVENT_ITEM_CLICK"

    invoke-virtual {v0, v2, p1}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 18
    :goto_1
    iget-object p1, p2, Ler6;->t:Lbn6;

    if-nez p1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, v1, Lnr6;->m:Lan6;

    const-string v2, "EVENT_ITEM_LONG_CLICK"

    invoke-virtual {v0, v2, p1}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 20
    :goto_2
    iget-object p1, p2, Ler6;->u:Lbn6;

    if-nez p1, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    iget-object v0, v1, Lnr6;->m:Lan6;

    const-string v2, "EVENT_ITEM_LEFT_ACTION"

    invoke-virtual {v0, v2, p1}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 22
    :goto_3
    iget-object p1, p2, Ler6;->v:Lbn6;

    if-nez p1, :cond_7

    goto :goto_4

    .line 23
    :cond_7
    iget-object p2, v1, Lnr6;->m:Lan6;

    const-string v0, "EVENT_ITEM_RIGHT_ACTION"

    invoke-virtual {p2, v0, p1}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    :goto_4
    return-object v1
.end method
