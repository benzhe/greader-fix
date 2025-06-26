.class public final Lqy5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj6$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqy5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljj6$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqy5$a;

    invoke-direct {v0}, Lqy5$a;-><init>()V

    sput-object v0, Lqy5$a;->a:Ljj6$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lqy5;->i(I)Lqy5;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
