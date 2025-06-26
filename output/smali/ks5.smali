.class public final synthetic Lks5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final e:Lks5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lks5;

    invoke-direct {v0}, Lks5;-><init>()V

    sput-object v0, Lks5;->e:Lks5;

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

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    .line 1
    sget v0, Ljs5$c;->c:I

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
