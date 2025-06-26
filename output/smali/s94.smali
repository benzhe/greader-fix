.class public abstract Ls94;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls94;

.field public static final b:Ls94;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq94;

    invoke-direct {v0}, Lq94;-><init>()V

    sput-object v0, Ls94;->a:Ls94;

    new-instance v0, Lr94;

    invoke-direct {v0}, Lr94;-><init>()V

    sput-object v0, Ls94;->b:Ls94;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

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
