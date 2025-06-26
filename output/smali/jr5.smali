.class public final synthetic Ljr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final e:Lkr5;


# direct methods
.method public constructor <init>(Lkr5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljr5;->e:Lkr5;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Ljr5;->e:Lkr5;

    check-cast p1, Lbq5;

    check-cast p2, Lbq5;

    .line 1
    invoke-static {p1}, Lkr5;->b(Lbq5;)I

    move-result v1

    invoke-static {p2}, Lkr5;->b(Lbq5;)I

    move-result v2

    invoke-static {v1, v2}, Lvx5;->b(II)I

    move-result v1

    .line 2
    iget-object v2, p1, Lbq5;->a:Lbq5$a;

    iget-object v3, p2, Lbq5;->a:Lbq5$a;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v0}, Lyq5;->b()Ljava/util/Comparator;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lbq5;->b:Lyt5;

    iget-object p2, p2, Lbq5;->b:Lyt5;

    .line 6
    check-cast v0, Lyq5$b;

    invoke-virtual {v0, p1, p2}, Lyq5$b;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1
.end method
