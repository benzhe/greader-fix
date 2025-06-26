.class public abstract Lny$a;
.super Lny$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lny$f;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lny$e<",
        "TT;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lny$e;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/os/Looper;Lj00;Ljava/lang/Object;Lqy$a;Lqy$b;)Lny$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lj00;",
            "TO;",
            "Lqy$a;",
            "Lqy$b;",
            ")TT;"
        }
    .end annotation
.end method
