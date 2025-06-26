.class public final Lc88;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc88$b;
    }
.end annotation


# static fields
.field public static final a:[Lc88$b;

.field public static volatile b:[Lc88$b;

.field public static final c:Lc88$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lc88$b;

    .line 1
    sput-object v0, Lc88;->a:[Lc88$b;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sput-object v0, Lc88;->b:[Lc88$b;

    .line 4
    new-instance v0, Lc88$a;

    invoke-direct {v0}, Lc88$a;-><init>()V

    sput-object v0, Lc88;->c:Lc88$b;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lc88;->c:Lc88$b;

    check-cast v0, Lc88$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lc88;->b:[Lc88$b;

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3, p0, p1}, Lc88$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
