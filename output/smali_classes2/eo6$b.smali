.class public final Leo6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La45;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leo6;->a(Lib7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lib7;


# direct methods
.method public constructor <init>(Lib7;)V
    .locals 0

    iput-object p1, p0, Leo6$b;->a:Lib7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Leo6$b;->a:Lib7;

    check-cast v0, Lwd7$a;

    invoke-virtual {v0, p1}, Lwd7$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
