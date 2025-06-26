.class public final La44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# static fields
.field public static final a:Lf94;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La44;

    invoke-direct {v0}, La44;-><init>()V

    sput-object v0, La44;->a:Lf94;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lb44;->i(I)Lb44;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
