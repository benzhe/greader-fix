.class public final synthetic Lx36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc7;


# instance fields
.field public final a:Ly36;

.field public final b:Lng6;


# direct methods
.method public constructor <init>(Ly36;Lng6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx36;->a:Ly36;

    iput-object p2, p0, Lx36;->b:Lng6;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lx36;->a:Ly36;

    iget-object v1, p0, Lx36;->b:Lng6;

    .line 1
    sget-object v2, Ly36;->c:Lng6;

    .line 2
    invoke-virtual {v0, v1}, Ly36;->b(Lng6;)V

    return-void
.end method
