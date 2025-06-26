.class public Lq75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lr75;


# direct methods
.method public constructor <init>(Lr75;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq75;->f:Lr75;

    iput p2, p0, Lq75;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lq75;->e:I

    iget-object v0, p0, Lq75;->f:Lr75;

    .line 2
    iget-object v0, v0, Lr75;->a:La75;

    .line 3
    iget-object v0, v0, La75;->i:Lcom/google/android/material/datepicker/Month;

    .line 4
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->f:I

    .line 5
    invoke-static {}, Lp75;->d()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 8
    new-instance p1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {p1, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 9
    iget-object v0, p0, Lq75;->f:Lr75;

    .line 10
    iget-object v0, v0, Lr75;->a:La75;

    .line 11
    iget-object v0, v0, La75;->h:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 12
    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->e:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/Month;->i(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    if-gez v1, :cond_0

    .line 13
    iget-object p1, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->e:Lcom/google/android/material/datepicker/Month;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->f:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/Month;->i(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    if-lez v1, :cond_1

    .line 15
    iget-object p1, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->f:Lcom/google/android/material/datepicker/Month;

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lq75;->f:Lr75;

    .line 17
    iget-object v0, v0, Lr75;->a:La75;

    .line 18
    invoke-virtual {v0, p1}, La75;->h(Lcom/google/android/material/datepicker/Month;)V

    .line 19
    iget-object p1, p0, Lq75;->f:Lr75;

    .line 20
    iget-object p1, p1, Lr75;->a:La75;

    .line 21
    sget-object v0, La75$e;->e:La75$e;

    invoke-virtual {p1, v0}, La75;->i(La75$e;)V

    return-void
.end method
