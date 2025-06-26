.class public final synthetic Lor5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final e:Lor5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lor5;

    invoke-direct {v0}, Lor5;-><init>()V

    sput-object v0, Lor5;->e:Lor5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lqr5;

    check-cast p2, Lqr5;

    .line 1
    iget-object v0, p1, Lqr5;->a:Lbu5;

    iget-object v1, p2, Lqr5;->a:Lbu5;

    invoke-virtual {v0, v1}, Lbu5;->i(Lbu5;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p1, Lqr5;->b:I

    iget p2, p2, Lqr5;->b:I

    invoke-static {p1, p2}, Lvx5;->b(II)I

    move-result v0

    :goto_0
    return v0
.end method
