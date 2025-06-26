.class public final synthetic Lau5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final e:Lau5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lau5;

    invoke-direct {v0}, Lau5;-><init>()V

    sput-object v0, Lau5;->e:Lau5;

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

    check-cast p1, Lbu5;

    check-cast p2, Lbu5;

    invoke-virtual {p1, p2}, Lbu5;->i(Lbu5;)I

    move-result p1

    return p1
.end method
