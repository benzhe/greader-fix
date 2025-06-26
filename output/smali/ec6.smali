.class public final synthetic Lec6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:La20;

.field public final f:Ljava/lang/String;

.field public final g:Lyb6;


# direct methods
.method public constructor <init>(La20;Ljava/lang/String;Lyb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec6;->e:La20;

    iput-object p2, p0, Lec6;->f:Ljava/lang/String;

    iput-object p3, p0, Lec6;->g:Lyb6;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lec6;->e:La20;

    iget-object v1, p0, Lec6;->f:Ljava/lang/String;

    iget-object v2, p0, Lec6;->g:Lyb6;

    .line 1
    sget-object v3, Lfc6;->e:Ljava/util/regex/Pattern;

    .line 2
    invoke-interface {v0, v1, v2}, La20;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
