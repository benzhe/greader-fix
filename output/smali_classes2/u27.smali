.class public Lu27;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu27$a;
    }
.end annotation


# instance fields
.field public a:Lu27$a;


# direct methods
.method public constructor <init>(Lu27$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 2
    iput-object p1, p0, Lu27;->a:Lu27$a;

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lu27;->a:Lu27$a;

    check-cast p1, Landroid/database/Cursor;

    check-cast v0, Lt27;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .line 1
    iget-object p1, p0, Lu27;->a:Lu27$a;

    check-cast p1, Lt27;

    .line 2
    iget-object p1, p1, Lt27;->f:Landroid/database/Cursor;

    .line 3
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 5
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lu27;->a:Lu27$a;

    move-object v0, p1

    check-cast v0, Lt27;

    .line 2
    iget-object v0, v0, Lt27;->f:Landroid/database/Cursor;

    .line 3
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    .line 4
    check-cast p2, Landroid/database/Cursor;

    check-cast p1, Lt27;

    invoke-virtual {p1, p2}, Lt27;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
