.class public Ld87$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc97$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ld87$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld87$c;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public next()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Ld87$c;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Ld87$c;->a:Ljava/io/InputStream;

    return-object v0
.end method
