.class public abstract Lkl4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkl4;

.field public static final b:Lkl4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lml4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lml4;-><init>(Ljl4;)V

    sput-object v0, Lkl4;->a:Lkl4;

    .line 2
    new-instance v0, Lll4;

    invoke-direct {v0, v1}, Lll4;-><init>(Ljl4;)V

    sput-object v0, Lkl4;->b:Lkl4;

    return-void
.end method

.method public constructor <init>(Ljl4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
