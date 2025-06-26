.class public final synthetic Lxt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final e:Lxt5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxt5;

    invoke-direct {v0}, Lxt5;-><init>()V

    sput-object v0, Lxt5;->e:Lxt5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lyt5;

    check-cast p2, Lyt5;

    .line 1
    sget v0, Lyt5;->e:I

    .line 2
    iget-object p1, p1, Lfu5;->a:Lbu5;

    iget-object p2, p2, Lfu5;->a:Lbu5;

    .line 3
    invoke-virtual {p1, p2}, Lbu5;->i(Lbu5;)I

    move-result p1

    return p1
.end method
