.class public final Lyq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly63;


# static fields
.field public static final a:Ly63;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyq3;

    invoke-direct {v0}, Lyq3;-><init>()V

    sput-object v0, Lyq3;->a:Ly63;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcq3$b;->i(I)Lcq3$b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
