.class public final synthetic Ldt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final e:Ldt5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldt5;

    invoke-direct {v0}, Ldt5;-><init>()V

    sput-object v0, Ldt5;->e:Ldt5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lru5;

    check-cast p2, Lru5;

    .line 1
    iget p1, p1, Lru5;->a:I

    iget p2, p2, Lru5;->a:I

    .line 2
    invoke-static {p1, p2}, Lvx5;->b(II)I

    move-result p1

    return p1
.end method
