.class public final synthetic Li56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final e:Li56;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li56;

    invoke-direct {v0}, Li56;-><init>()V

    sput-object v0, Li56;->e:Li56;

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

    check-cast p1, Lkg6;

    check-cast p2, Lkg6;

    .line 1
    invoke-virtual {p1}, Lkg6;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lkg6;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lkg6;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkg6;->F()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lkg6;->H()Lhy5;

    move-result-object p1

    invoke-virtual {p1}, Lhy5;->D()I

    move-result p1

    invoke-virtual {p2}, Lkg6;->H()Lhy5;

    move-result-object p2

    invoke-virtual {p2}, Lhy5;->D()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    :goto_0
    return p1
.end method
