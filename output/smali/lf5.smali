.class public final synthetic Llf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llo5;


# static fields
.field public static final a:Llo5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Llf5;

    invoke-direct {v0}, Llf5;-><init>()V

    sput-object v0, Llf5;->a:Llo5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lko5;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
