.class public final synthetic Lc46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La45;


# instance fields
.field public final a:Lsb7;


# direct methods
.method public constructor <init>(Lsb7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc46;->a:Lsb7;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lc46;->a:Lsb7;

    .line 1
    check-cast v0, Lag7$a;

    invoke-virtual {v0, p1}, Lag7$a;->b(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {v0}, Lag7$a;->a()V

    return-void
.end method
